require 'faker'

Dado('que estou na página de cadastro') do
  @home = HomePage.new
  @cadastro = CadastroPage.new
  @nav = Nav.new

  # cenario
  @home.acessar
  @nav.vai_para_cadastro
end

Quando("faço o meu cadastro com:") do |table|
  @usuario = table.rows_hash
  @cadastro.faz_cadastro(@usuario[:nome], @usuario[:email], @usuario[:senha] )
end

Então('devo ver a seguinte mensagem {string}') do |mensagem_alerta|
    expect(@cadastro.msg_alerta).to eql mensagem_alerta
end

Então('devo ver a seguinte mensagem de {string}') do |mensagem_alerta|
  expect(@login.msg_alerta).to eql mensagem_alerta
end