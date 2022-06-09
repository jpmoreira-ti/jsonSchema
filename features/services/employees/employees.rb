# frozen_string_literal: true

module API
  module Rest
    class Employess
      include HTTParty

      base_uri URL['employee']
      headers 'Content-Type' => 'application/json'
      default_timeout 240
      format :json

      def return_employees
        endpoint = ENDPOINT['employees']
        self.class.get(endpoint, body: {})
      end
    end
  end
end
