# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))
require "lockbox/version"

Gem::Specification.new do |gem|
  gem.authors               = ["Robert Krzyzanowski"]
  gem.email                 = ["rob@syberia.io"]
  gem.description           = "Command-line bundler-style dependency management tool for R"
  gem.summary               = "A command line dependency management system for R packages."

  gem.required_ruby_version = ">= 2.2.2"
  gem.files                 = `git ls-files`.split("\n")
  gem.test_files            = gem.files.grep(%r{^(test|spec|features)/})
  gem.name                  = "lockbox"
  gem.require_paths         = ["lib"]
  gem.version               = Lockbox::VERSION

  gem.executables << "lockbox"

  gem.add_dependency("thor")
  gem.add_dependency("activesupport")
end

