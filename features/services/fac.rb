# frozen_string_literal: true

class Commons
  def self.carrega_schema(endpoint)
    "#{File.dirname(__FILE__)}/templates/schemas/#{endpoint}_schema"
  end

  def self.logger(param)
    log = Logger.new($stdout)
    log.level = Logger::INFO
    log.formatter = proc do |severity, datetime, _progname, msg|
      date_format = datetime.strftime('%Y-%m-%d %H:%M:%S')
      "#{JSON.dump(date: date_format.to_s, severity: severity.to_s, message: msg)}\\n"
    end
    log.info(param)
  end
end
