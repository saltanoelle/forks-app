require 'rails_helper'



 describe Contact do

 it "is valid with a firstname, lastname and email" do

 contact = Contact.new(

 firstname: 'Aaron',

 lastname: 'Sumner',

 email: 'tester@example.com')

 expect(contact).to be_valid

 end


 end