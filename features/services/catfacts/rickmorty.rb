# frozen_string_literal: true

module API
  module Rest
    class CatFacts
      include HTTParty

      base_uri URL['rick']
      headers 'Content-Type' => 'application/json'
      default_timeout 240
      format :json

      def return_cat_facts
        endpoint = ENDPOINT['morty']
        self.class.get(endpoint, body: {})
      end
    end
  end
end
