# frozen_string_literal: true

class Commons
  def self.carrega_schema(endpoint)
    "#{File.dirname(__FILE__)}/templates/schemas/#{endpoint}_schema"
  end

  def self.logger(param)
    log = Logger.new($stdout)
    log.info(param)
  end
end
