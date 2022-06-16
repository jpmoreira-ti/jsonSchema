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
  Fac.print_log(response)
  expect(response.code).to eq 200
  expect(response.response.body).to match_response_schema(Fac.carrega_schema('catfact'))
end
