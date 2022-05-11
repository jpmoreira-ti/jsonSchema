# frozen_string_literal: true

module API
  module Rest
    class RickMorthy
      include HTTParty

      base_uri URL['rickmorthy']
      headers 'Content-Type' => 'application/json'
      default_timeout 240

      def get_character(id)
        endpoint = ENDPOINT['character'].sub('{id}', id)
        self.class.get(endpoint, body: {})
      end
    end
  end
end
