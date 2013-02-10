module Yapura
  class DataType
    attr_accessor :id, :name, :type, :options

    def initialize(type)
      self.type = type
    end

    def []=(id, called, options = {})
      self.name = called
      self.id = id
      self.options = options
      self
    end

    def [](id, called)
      self[id, called] = {}
    end
  end
end