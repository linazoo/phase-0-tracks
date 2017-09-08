#NOTES:
#Object relational mapping (ORM)

#create a SQlite3 database (past sqlite3 somedatabase.db)
#this method will evaluate and run as SQL: we can pass a block if we want and it changes the behavior

# SQLITE3: Database.new( "data.db" ) |db|
#   db.execute( "select * from table" ) do |row|
#     p row
#   end
# end



#-----------------------------------------------------------
#require gems
require 'sqlite3'
require 'faker'

#make a variable called db
db = SQLite3::Database.new("cookbook.db")
db.results_as_hash = true
# db.execute("SELECT * FROM cookbook")

#create SQLite 3 database
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS cookbook (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    ingredients VARCHAR(255)
  )
SQL

#create a cookbook table (if its not there already)
db.execute(create_table_cmd)

def create_recipe(db, name, ingredients)
  db.execute("INSERT INTO cookbook (name, ingredients) VALUES (?, ?)", [name, ingredients, instructions])
end

puts "hey"