# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along-complete/3-migrations.rb

# **************************
# Don't change or move
Salesperson.destroy_all
# **************************

# Add new Salesperson model with database table

# 1. in terminal, run:
# rails generate model Salesperson

# 2. open newly generated files

# 3. add relevant columns to the db/migrate file:
# first_name, last_name, email

# 4. execute the migration file. in terminal, run:
# rails db:migrate

# pay attention to the SQL in the log
# check the schema to confirm the change

# 5. insert new rows in the table

salesperson1 = Salesperson.new
salesperson1.first_name = "Brian"
salesperson1.last_name = "Eng"
salesperson1.email = "brian@test.com"
salesperson1.save

salesperson2 = Salesperson.new
salesperson2.first_name = "Ben"
salesperson2.last_name = "Block"
salesperson2.email = "ben@test.com"
salesperson2.save