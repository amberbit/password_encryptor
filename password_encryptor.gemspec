# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'password_encryptor/version'

Gem::Specification.new do |spec|
  spec.name          = "password_encryptor"
  spec.version       = PasswordEncryptor::VERSION
  spec.authors       = ["Hubert Łępicki"]
  spec.email         = ["hubert.lepicki@amberbit.com"]
  spec.summary       = %q{Encrypts passwords with BCrypt}
  spec.description   = %q{Simple wrapper for BCrypt library to encrypt your passwords.}
  spec.homepage      = "http://github.com/hubertlepicki/password_encryptor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bcrypt"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

