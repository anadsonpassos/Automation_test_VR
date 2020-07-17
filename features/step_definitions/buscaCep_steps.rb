Dado("que eu faça uma busca pelo o CEP {string}") do |cep|
    @cep = cep
    @requestConsulta = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
end

Quando("obter os dados do endereço solicitado") do
    @resultCep = @cep
    expect(@requestConsulta['cep']).to eq(@resultCep)
    log @requestConsulta
end

Então("o sistema retorna status de sucesso {int}") do |sucesso|
    expect(@requestConsulta.code).to eq sucesso
end

Então("exibo o código de retorno do IBGE do cep consultado") do
    log(@requestConsulta["ibge"])
end

Então("o sistema retorna status de erro {int}") do |erro|
    expect(@requestConsulta.code).to eq erro
end
