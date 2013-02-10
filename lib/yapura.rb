require "yapura/version"
require "yapura/namespace"
require "yapura/structure"
require "yapura/data_type"
require "yapura/enum"
require "yapura/list"
require "yapura/lang/lang"

module Yapura
  extend self
  attr_accessor :children

  def service(&block)
    self.children = []
    instance_eval(&block)
  end

  def namespace(*args, &block)
    self.children << Namespace.new(*args, &block)
  end

  def structure(*args, &block)
    self.children << Structure.new(*args, &block)
  end

  def enum(*args, &block)
    self.children << Enum.new(*args, &block)
  end

  def parse(block = nil)
    if block_given?
      yield children
    else
      block.call(children)
    end
  end

end

