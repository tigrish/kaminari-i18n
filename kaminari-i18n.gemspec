# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaminari-i18n/version'

Gem::Specification.new do |spec|
  spec.name          = "kaminari-i18n"
  spec.version       = KaminariI18n::VERSION
  spec.authors       = ["Christopher Dell"]
  spec.email         = ["chris@tigrish.com"]
  spec.summary       = %q{Translations for the kaminari gem}
  spec.description   = %q{Translations for the kaminari gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_dependency "kaminari"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "i18n-spec"
  spec.add_development_dependency "localeapp"
end
