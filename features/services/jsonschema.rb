# frozen_string_literal: true

module API
  class RickMorthy
    include HTTParty

    headers 'Content-Type' => 'application/json-patch+json'
    base_uri URL['rickmorthy']
    default_timeout 240

    def get_character(id)
      endpoint = ENDPOINT['character'].sub('{id}', id)
      self.class.get(endpoint, body: {})
    end
  end
end
