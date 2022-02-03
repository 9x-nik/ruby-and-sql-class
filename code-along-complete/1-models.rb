# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along-complete/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# Number of rows in companies table

p Company.all.count

# 2. create new companies

# Insert a row
values = { name: "Apple Inc.", url: "https://www.apple.com", city: "Cupertino", state: "CA" }
apple = Company.new(values)
apple.save

# pay attention to the SQL in the log

p Company.all.count

# Insert another row
values = { name: "Amazon.com, Inc.", url: "https://www.amazon.com", city: "Seattle", state: "WA" }
amazon = Company.new(values)
amazon.save

# pay attention to the SQL in the log

p Company.all.count

# 3. query companies table

# All rows in companies table
p Company.all

# All rows in companies table where state is "CA"
p Company.where({ state: "CA" })

# Single row in companies table where name is "Apple Inc."
company = Company.where({ name: "Apple Inc." })[0]
p company

# 4. read column values from row

p company.read_attribute(:url)
# OR shortcut
p company.url

# 5. update attribute value

company.write_attribute(:slogan, "Think Different.")
# OR shortcut
company.slogan = "Think Different."
company.save

p company

# 6. create a new company using individual attribute assignment:

new_company = Company.new
new_company.name = "Tesla, Inc."
new_company.url = "https://www.tesla.com"
new_company.city = "Palo Alto"
new_company.state = "CA"
new_company.save
