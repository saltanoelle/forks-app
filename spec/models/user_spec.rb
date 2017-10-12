require 'rails_helper'



 describe Contact do

 it "is valid with a firstname, lastname and email" do

 user = User.new(

 firstname: 'Aaron',

 lastname: 'Sumner',

 email: 'tester@example.com')

 expect(user).to be_valid

 end


 end