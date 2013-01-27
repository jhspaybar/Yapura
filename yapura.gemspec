# -*- encoding: utf-8 -*-
require File.expand_path('../lib/yapura/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["William Thurston"]
  gem.email         = ["me@williamthurston.com"]
  gem.description   = <<-EOF
    Yapura, is a DSL for specifying object models and services.
    With a single definition file, generators will create code in
    your language, complete with proper serialization of datatypes.
  EOF
  gem.summary       = %q{Yapura, a model and service definition language.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["yapura"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "yapura"
  gem.require_paths = ["lib"]
  gem.version       = Yapura::VERSION
end
