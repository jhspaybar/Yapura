module Yapura
  class Enum
    attr_accessor :name, :children

    def initialize(name, &block)
      self.name = name
      self.children = {}
      instance_eval(&block)
    end

    def method_missing(method, *args, &block)
      @children[method.to_s] = args[0]
    end
  end
end