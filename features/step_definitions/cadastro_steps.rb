require 'faker'

Dado('que estou na página de cadastro') do
  # cenario
  @home.acessar
  @nav.vai_para_cadastro
end

Quando("faço o meu cadastro com:") do |table|
  @usuario = table.rows_hash

  DAO.new.remover_usuario(@usuario[:email])

  @cadastro.faz_cadastro(@usuario[:nome], @usuario[:email], @usuario[:senha] )
end

Então('devo ver a seguinte mensagem {string}') do |mensagem_alerta|
    expect(@cadastro.msg_alerta).to eql mensagem_alerta
end

Então('devo ver a seguinte mensagem de {string}') do |mensagem_alerta|
  expect(@cadastro.msg_alerta).to eql mensagem_alerta
end
