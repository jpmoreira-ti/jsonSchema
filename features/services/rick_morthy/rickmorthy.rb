# frozen_string_literal: true

module API
  module Rest
    class RickMorthy
      include HTTParty

      base_uri URL['rickmorthy']
      headers 'Content-Type' => 'application/json'
      default_timeout 240
      format :json

      def get_character
        endpoint = ENDPOINT['character']
        self.class.get(endpoint, body: {})
      end
    end
  end
end
