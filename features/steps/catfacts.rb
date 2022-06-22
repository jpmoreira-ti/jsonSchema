# frozen_string_literal: true

Dado('que desejo obter fatos sobre gatos') do
  @catfacts = OpenStruct.new
end

Quando('realizo a pesquisa de fatos sobre gatos') do
  @catfacts.response = API::Rest::CatFacts.new.return_cat_facts
rescue StandardError => e
  @catfacts.error = e
end

Entao('obtenho fatos sobre gatos com sucesso') do
  response = @catfacts.response
  puts "\nVALIDAR O TOTAL DE ITENS DE UM ARRAY: #{response.count}"
  puts "VALIDAR UM VALOR PRÉ-DEFINIDO: #{response[0]['status']['verified']}"
  puts "VALIDAR UM TEXTO: #{response[0]['text']}"
  puts "VALIDAR UMA DATA: #{response[0]['createdAt']}"

  expect(response.code).to eq 200
  expect(response.response.body).to match_response_schema(Fac.carrega_schema('catfact'))
end
