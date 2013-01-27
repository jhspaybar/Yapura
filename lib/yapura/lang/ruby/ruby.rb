module Yapura
  module Lang
    module Ruby
      class Generator
        attr_accessor :level

        def initialize
          self.level = 0
        end

        def call(nodes)
          nodes.each do |node|
            dispatch node
          end
        end

        def namespace(node)
          puts "#{indent}module #{node.name.capitalize}"
          self.level += 1
          node.children.each do |node|
            dispatch node
          end
          self.level -= 1
          puts "#{indent}end"
        end

        def structure(node)
          puts "#{indent}class #{node.name.capitalize}"
          self.level += 1
          node.children.each do |node|
            dispatch node
          end
          self.level -= 1
          puts "#{indent}end"
        end

        def datatype(node)
          puts "#{indent}attr_accessor :#{node.name}"
        end

        def indent
          '  '*level
        end

        private

        def dispatch(node)
          send(node.class.name.split('::').last.downcase.to_sym, node)
        end
      end
    end
  end
end