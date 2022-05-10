# frozen_string_literal: true

payload = YAML.load_file("#{File.dirname(__FILE__)}/templates/schemas/personagens_schema")

Dado('que digito o {string}') do |_id|
  @id = payload
end

Quando('pesquiso o personagem') do
  request = rick_morthy.get_character(@id)
  log "\n#{request}"
end

Entao('tenho acesso as informações do personagem com sucesso') do
  expect(request.code).to eq 200
end
