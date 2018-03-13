require 'database_connection'

RSpec.describe DatabaseConnection do
    describe '.setup' do
        it 'sets up a connection to a database through PG' do
            expect(PG).to receive(:connect).with(dbname: 'remember_me_test')

            DatabaseConnection.setup('remember_me_test')
        end
    end

    describe '.query' do
        it 'executes a query via PG' do
            connection = DatabaseConnection.setup('remember_me_test')

            expect(connection).to receive(:exec).with("SELECT * FROM memories;")

            DatabaseConnection.query("SELECT * FROM memories;")
        end
    end
end