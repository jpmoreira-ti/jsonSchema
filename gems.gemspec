# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'Testes_json_schema'
  spec.version     = '0.0.1'
  spec.licenses    = ['MIT']
  spec.summary     = 'Projeto JSON SCHEMA'
  spec.description = 'Testes json schema'
  spec.authors     = ['Joao Paulo Moreira']
  spec.email       = 'jpmoreira.ti@gmail.com'
  spec.files       = ['features/step_definitions/example.rb']
  spec.required_ruby_version = '= 2.6'

  spec.add_dependency 'cucumber'
  spec.add_dependency 'fig_newton'
  spec.add_dependency 'httparty'
  spec.add_dependency 'json_matchers'
  spec.add_dependency 'json-schema-rspec'
  spec.add_dependency 'logger'
  spec.add_dependency 'parallel_tests'
  spec.add_dependency 'pry'
  spec.add_dependency 'rake'
  spec.add_dependency 'rspec'
  spec.add_dependency 'rubocop'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
