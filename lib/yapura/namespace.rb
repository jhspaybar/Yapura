module Yapura
	class Namespace
    attr_accessor :name, :children

    def initialize(name, &block)
      self.name = name
      self.children = []
      instance_eval(&block)
    end

    def namespace(*args, &block)
      self.children << Namespace.new(*args, &block)
    end

    def structure(*args, &block)
      self.children << Structure.new(*args, &block)
    end
  end
end