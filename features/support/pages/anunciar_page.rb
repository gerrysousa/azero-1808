
class AnunciarPage
    include Capybara::DSL

    def novo(veiculo)
        seleciona_marca(veiculo[:marca])
        escolhe_modelo(veiculo[:marca])
        find('#version').set @veiculo[:versao]
        find('#year').set @veiculo[:ano]
        find('#price').set @veiculo[:preco]find()
    end

    def seleciona_marca(marca)
        find('#brand').find('option', text: marca).select_option
    end

    def escolhe_modelo(modelo)
        find("input[type=radio][value=#{modelo}").click();
    end

    find('#brand').find('option', text: @veiculo[:marca]).select_option
    find("input[type=radio][value=#{ @veiculo[:modelo]}").click();
    find('#version').set @veiculo[:versao]
    find('#year').set @veiculo[:ano]
    find('#price').set @veiculo[:preco]