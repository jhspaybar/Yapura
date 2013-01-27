module Yapura
  class DataType
    attr_accessor :id, :name, :type

    def initialize(type)
      self.type = type
    end

    def []=(id, called)
      self.name = called
      self.id = id
    end
  end
end