class CadastroPage
    include Capybara::DSL
  
    def faz_cadastro(nome, email, senha)     
      find('input[placeholder=Email]').set email
      find('#fullName').set nome  
      find('input[type=password]').set senha
      click_button 'Cadastrar'
    end
  
    def msg_alerta
      within('form[class=form-center]') do
        return find('.alert').text
      end
    end
  end
  