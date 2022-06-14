# frozen_string_literal: true

Dado('que desejo saber sobre todos os empregados de uma unica vez') do
  @employees = OpenStruct.new
end

Quando('realizo a pesquisa de empregados') do
  @employees.response = API::Rest::Employess.new.return_employees
rescue StandardError => e
  @employees.error = e
end

Entao('tenho acesso as informações de todos os empregados com sucesso') do
  response = @employees.response
  Commons.logger(response.body)
  expect(response.code).to eq 200
  expect(response.response.body).to match_response_schema(Commons.carrega_schema('employees'))
end
