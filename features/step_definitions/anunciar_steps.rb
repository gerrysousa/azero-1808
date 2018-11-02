Dado("que acessei o formulario de anuncios de veiculos") do
    @nav.vai_para_anuncio
  end

 
Dado("que possuo o seguinte veículo") do |table|
    @anuncio = table.hashes    
end
  
Dado("eu já cadastrei esse anúncio anteriormente") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado("esse veículo é blindado") do
   pending # Write code here that turns the phrase above into concrete actions
end

Quando("faço anúncio deste veículo") do
    find('#brand').find('option', text: @anuncio[0][:marca]).select_option 
    sleep 5
end

Então("vejo a seguinte mensagem de sucesso:") do |mensagem_sucesso|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então("vejo a seguinte mensagem de alerta:") do |mensagem_alerta|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então("vejo a seguinte mensagem de sucesso") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end