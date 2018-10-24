#language: pt

Funcionalidade: Anunciar meu carro
    Para que eu possa receber ofertas de compra
    Sendo um usuario cadastrado
    Posso anunciar meu veiculo

    Contexto:
        Dado que acessei o formulario de anuncios de veiculos


    @temp1
    Cenário: Criar anúncio

        E que possuo o seguinte veículo
            | marca     | modelo | versao  | ano  | preco      |
            | Chevrolet | Camaro | Blue 79 | 1979 | 250.000,00 |
        Quando faço anúncio deste veículo
        Então vejo a seguinte mensagem de sucesso: 
        """
        Parabéns. Seu carro foi anunciado com sucesso.
        """
    
    Cenário: Anúncio duplicado

        E que possuo o seguinte veículo
            | marca | modelo | versao         | ano  | preco     |
            | Ford  | Fusion | 2.4 automático | 2016 | 70.000,00 |
        Mas eu já cadastrei esse anúncio anteriormente
        Quando faço anúncio deste veículo
        Então vejo a seguinte mensagem de alerta:
        """
        Este anúncio já está cadastrado.
        """

    Cenário: Carro blindado

        E que possuo o seguinte veículo
            | marca     | modelo | versao  | ano  | preco      |
            | Chevrolet | Camaro | Blue 79 | 1979 | 250.000,00 |
        E esse veículo é blindado
        Quando faço anúncio deste veículo
        Então vejo a seguinte mensagem de sucesso
        """
        Não anunciamos carros blindados.
        """