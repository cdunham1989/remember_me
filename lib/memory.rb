require 'database_connection'

class Memory
    def self.all
        result = DatabaseConnection.query("SELECT * FROM memories")
        result.map { |memory| memory['title'] }
    end

    def self.create(options)
        if options[:title] != ""
            DatabaseConnection.query("INSERT INTO memories (title, description) VALUES('#{options[:title]}', '#{options[:description]}')")
        end
    end
end