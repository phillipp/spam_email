# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spam_email/version'

Gem::Specification.new do |spec|
  spec.name          = "spam_email"
  spec.version       = SpamEmail::VERSION
  spec.authors       = ["Phillipp Röll"]
  spec.email         = ["phillipp@roell.ph"]
  spec.description   = %q{ActiveModel validation that checks email addresses against a blacklist of trash-mail providers}
  spec.summary       = %q{ActiveModel validation for spam/one-time email addresses}
  spec.homepage      = ""
  spec.license       = "whatever"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "mail"
  spec.add_runtime_dependency "activemodel"
end
