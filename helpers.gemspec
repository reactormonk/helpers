#!/usr/bin/env gem build
# encoding: utf-8

# Run ./helpers.gemspec or gem build helpers.gemspec
require "base64"

Gem::Specification.new do |s|
  s.name = "helpers"
  s.version = "0.0.1"
  s.authors = ["Jakub Stastny aka Botanicus"]
  s.homepage = "http://github.com/botanicus/helpers"
  s.summary = "Framework-agnostic template helpers"
  s.description = "" # TODO: long description
  s.cert_chain = nil
  s.email = # TODO: your mail
  s.has_rdoc = true

  # files
  s.files = `git ls-files`.split("\n")

  s.require_paths = ["lib"]

  # Ruby version
  s.required_ruby_version = ::Gem::Requirement.new(">= 1.9")

  begin
    require "changelog"
  rescue LoadError
    warn "You have to have changelog gem installed for post install message"
  else
    s.post_install_message = CHANGELOG.new.version_changes
  end

  # RubyForge
  s.rubyforge_project = "helpers"
end