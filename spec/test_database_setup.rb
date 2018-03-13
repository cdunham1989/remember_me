p "setting up test database..."

require 'pg'

connection = PG.connect(dbname: 'remember_me_test')

connection.exec("TRUNCATE memories;")

connection.exec("INSERT INTO memories VALUES(1, 'Holiday to Mexico', 'Journey to Mexico with Derek in June 2017');")
connection.exec("INSERT INTO memories VALUES(2, 'Our Anniversary', 'Anniversary 2017, Dinner at Gaucho');")
connection.exec("INSERT INTO memories VALUES(3, 'Christmas at Home', 'A quiet Christmas just the two of us');")