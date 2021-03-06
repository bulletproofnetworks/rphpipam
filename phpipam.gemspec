# frozen_string_literal: true
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phpipam/version'

Gem::Specification.new do |spec|
  spec.name          = 'phpipam'
  spec.version       = Phpipam::VERSION
  spec.authors       = ['Buleltproof Networks']
  spec.email         = ['saurabh.bhatia@bulletproof.net']

  spec.summary       = %q(ruby interface for phpipam api)
  spec.description   = %q(a ruby gem that talks to phpipam api)
  spec.homepage      = 'http://bulletproof.net'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_dependency 'httparty'
  spec.add_dependency 'ipaddress'
end
