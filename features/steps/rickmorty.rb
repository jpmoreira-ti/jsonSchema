# frozen_string_literal: true

Dado('que digito o {string}') do |id|
  @rick = OpenStruct.new
  @rick.id = id
end

Quando('pesquiso o personagem') do
  @rick.response = API::Rest::RickMorthy.new.get_character(@rick.id) #rick_morthy.get_character(@rick.id)
rescue StandardError => e
  @rick.error = e
end

Entao('tenho acesso as informações do personagem com sucesso') do
  response = @rick.response
  expect(response.code).to eq 200
  expect(response.response.body).to match_response_schema(Commons.carrega_schema('character'))
end
