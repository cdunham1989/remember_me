require 'pg'

class Memory
    def self.all
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'remember_me_test')
        else
            connection = PG.connect(dbname: 'remember_me')
        end

        result = connection.exec("SELECT * FROM memories")
        result.map { |memory| memory['title'] }
    end
end