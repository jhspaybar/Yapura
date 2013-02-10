module Yapura
  class Structure
    attr_accessor :name, :children, :recent_list

    def initialize(name, &block)
      self.name = name
      self.children = []
      instance_eval(&block)
    end

    def list
      self.recent_list = List.new
    end

    def method_missing(method, *args, &block)
      add_list
      item = DataType.new(method)
      if !(children.last.respond_to? '<')
        self.children << item
      end
      item
    end

    private

    def add_list
      unless recent_list.nil?
        self.children << recent_list
      end
      self.recent_list = nil
    end
  end
end