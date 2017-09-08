#NOTES:
#COOK BOOK created with Object relational mapping (ORM)

#-----------------------------------------------------------
#require gems to bridge the gap between the database and my program
require 'sqlite3'
require 'faker'

#create a cookbook database
db = SQLite3::Database.new("cookbook.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS cookbook (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    ingredients VARCHAR(255)
  )
SQL

#create a cookbook table (if its not there already)
db.execute(create_table_cmd)

#add a recipe to the cookbook table
def create_recipe(db, name, ingredients)
  db.execute("INSERT INTO cookbook (name, ingredients) VALUES (?, ?)", [name, ingredients])
end

#get all our recipes from the cookbook so far
def get_all_recipes(db)
  db.execute("SELECT * FROM cookbook")
end

puts "W E L C O M E TO THE C O O K B O O K ! enter 1 to create a new recipe - enter 2 to view all recipes"
decision = gets.chomp.to_i
if decision == 1
  puts "What is your recipe name?"
    dish = gets.chomp
  puts "What are the main ingredients?"
    ingredient = gets.chomp

  create_recipe(db, dish, ingredient)
else
  # puts "here are all the recipes:  "
  recipes = get_all_recipes(db)
  puts "#{recipes}"
end


#retrieve data with a ORM (object relational mapper putting it in a data structure that is familiar like a hash:)

# recipes = db.execute("SELECT * FROM recipes")
# recipes.each do |recipe|
#   puts "For the #{recipe ['name']} you'll need: #{recipe['ingredients']}"
# end
