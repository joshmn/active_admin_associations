# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_admin_associations/version'

Gem::Specification.new do |spec|
  spec.name          = "active_admin_associations"
  spec.version       = ActiveAdminAssociations::VERSION
  spec.authors       = ["Josh Brody"]
  spec.email         = ["josh@josh.mn"]

  spec.summary       = %q{A dropdown menu for your ActiveRecord relations between ActiveAdmin Resources.}
  spec.description   = %q{A dropdown menu for your ActiveRecord relations between ActiveAdmin Resources.}
  spec.homepage      = "https://github.com/joshmn/active_admin_associations"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "active_admin"
  spec.add_dependency "rails"
  
end
