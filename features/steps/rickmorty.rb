# frozen_string_literal: true

$VERBOSE = nil

Dado('que desejo saber todos os dados do personagem') do
  @caracter = OpenStruct.new
end

Quando('realizo a pesquisa do personagem') do
  @caracter.response = API::Rest::CatFacts.new.return_cat_facts
rescue StandardError => e
  @caracter.error = e
end

Entao('tenho acesso as informações do personagem com sucesso') do
  response = @caracter.response
  puts "\nVALIDAR O TOTAL DE ITENS DE UM ARRAY: #{response['results'].count}"
  puts "VALIDAR UM VALOR PRÉ-DEFINIDO: #{response['results'][0]['species']}"
  puts "VALIDAR UM TEXTO: #{response['results'][0]['origin']['name']}"
  puts "VALIDAR UMA DATA: #{response['results'][0]['created']}"

  expect(response.code).to eq 200
  expect(response.response.body).to match_response_schema(Fac.carrega_schema('rickmortypersonagem'))
end
