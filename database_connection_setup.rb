require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
    DatabaseConnection.setup('remember_me_test')
else
    DatabaseConnection.setup('remember_me')
end