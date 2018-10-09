
require 'mongo'

class DAO
    
    Mongo::Logger.logger = Logger.new('log/mongo.log')

    def remover_usuario(email)
        str_conn = 'mongodb://aluno:qaninja@ds117719.mlab.com:17719/ninjamotors'
        client = Mongo::Client.new(str_conn)

        usuarios =  client[:users]
        usuarios.delete_one{'profile.email'== email}
    end
end