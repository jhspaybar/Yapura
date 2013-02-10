module Yapura
  class Structure
  	class List
      attr_accessor :id, :name, :children, :options

      def initialize
        self.children = []
      end

      def <(element)
        self.children << element
        if element.class == self.class
          element
        else
          self
        end
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
end
