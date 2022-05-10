# frozen_string_literal: true

class Commons
  def self.carrega_schema(endpoint)
    YAML.load_file("#{File.dirname(__FILE__)}/templates/schemas/#{endpoint}_schema")
  end
end
