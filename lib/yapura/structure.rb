module Yapura
  class Structure
    attr_accessor :name, :children

    def initialize(name, &block)
      self.name = name
      self.children = []
      instance_eval(&block)
    end

    def method_missing(method, *args, &block)
      self.children << DataType.new(method)
      children.last
    end
  end
end