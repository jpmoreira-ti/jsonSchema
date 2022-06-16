# frozen_string_literal: true

class Fac
  def self.carrega_schema(endpoint)
    "#{File.dirname(__FILE__)}/templates/schemas/#{endpoint}_schema"
  end

  def self.print_log(response)
    puts JSON.pretty_generate(response)
  end
end
