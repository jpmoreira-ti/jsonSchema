# frozen_string_literal: true

require 'fig_newton'
require 'httparty'
require 'openssl'
require 'rake'
require 'json_matchers'
require 'json-schema-rspec'
require 'cucumber'
require 'logger'
require 'pry'
require 'json'

URL = YAML.load_file("#{File.dirname(__FILE__)}/config/urls.yml")
ENDPOINT = YAML.load_file("#{File.dirname(__FILE__)}/config/endpoints.yml")
silence_warnings { OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE }

# Set schemas json
JsonMatchers.schema_root = "#{File.expand_path(File.dirname(File.dirname(__FILE__)))}/services"
