
require 'mongo'

class DAO
    
    Mongo::Logger.logger = Logger.new('log/mongo.log')

    def remover_usuario(email)
        puts email
        usuarios =  client[:users]
        usuarios.delete_one{'profile.email'== email}
    end

    def remover_veiculo(veiculo)
        anuncios =  client[:sells]
        anuncios.delete_many(
            'brand'=> veiculo[:marca], 
            'model'=> veiculo[:modelo],
            'desc'=> veiculo[:versao]
        )
    end


    def client
        str_conn = 'mongodb://aluno:qaninja@ds117719.mlab.com:17719/ninjamotors'
        client = Mongo::Client.new(str_conn)
    end


end