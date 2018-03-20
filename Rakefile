require 'pg'

task :test_database_setup do
    p "setting up test database..."

    connection = PG.connect(dbname: 'remember_me_test')

    connection.exec("TRUNCATE memories;")

    connection.exec("INSERT INTO memories VALUES(1, 'Holiday to Mexico', 'Journey to Mexico with Derek in June 2017');")
    connection.exec("INSERT INTO memories VALUES(2, 'Our Anniversary', 'Anniversary 2017, Dinner at Gaucho');")
    connection.exec("INSERT INTO memories VALUES(3, 'Christmas at Home', 'A quiet Christmas just the two of us');")
end

task :setup do
    p "Creating databases..."

    ['remember_me', 'remember_me_test'].each do |database|
        connection = PG.connect
        connection.exec("CREATE DATABASE #{ database };")
    
        connection = PG.connect(dbname: database)
        connection.exec("CREATE TABLE memories(id SERIAL PRIMARY KEY, title VARCHAR(100), description VARCHAR(200));")
    end
end