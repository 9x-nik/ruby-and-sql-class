# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along-complete/2-associations.rb

p Company.all.count
p Contact.all.count

# 1. Query all of the contacts at Apple Inc.

apple = Company.where({ name: "Apple Inc." })[0]

# NOT GREAT
# p apple.id
# Contact.where(company_id: _) # replace _ with actual id 

# BETTER
apple_id = apple.id
contacts = Contact.where(company_id: apple_id)

p "Contacts at Apple: #{contacts.count}"
for contact in contacts
    p "#{contact.first_name} #{contact.last_name}"
end

# BEST
# contacts = apple.contacts

# 2. add association to contacts in models/company.rb
# 
# def contacts
#   Contact.where(company_id: id)
# end
# 
# replace with association method
# has_many :contacts
#
# pay attention to the SQL in the log

# 3. add association to company in models/contact.rb
#
# def company
#   Company.where(id: company_id)[0]
# end
# 
# replace with association method
# belongs_to :company
#
# pay attention to the SQL in the log
