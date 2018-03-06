require 'pg'

class Memory
    def self.all
        connection = PG.connect(dbname: 'remember_me')
        result = connection.exec("SELECT * FROM memories")
        result.map { |memory| memory['title'] }
    end
end