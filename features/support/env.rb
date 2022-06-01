# frozen_string_literal: true

require 'httparty'
require 'openssl'
require 'rake'
require 'rspec'
require 'json_matchers/rspec'
require 'cucumber'
require 'pry'
require 'json'
require 'logger'

URL = YAML.load_file("#{File.expand_path('../', File.dirname(__FILE__))}/support/config/urls.yml")
ENDPOINT = YAML.load_file("#{File.expand_path('../', File.dirname(__FILE__))}/support/config/endpoints.yml")

# Set schemas json
JsonMatchers.schema_root = "#{File.expand_path('../', File.dirname(__FILE__))}/services"
