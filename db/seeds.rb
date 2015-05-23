require 'faker'

#Create Users
5.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end
users = User.all



 # Note: by calling `User.new` instead of `create`,
 # we create an instance of User which isn't immediately saved to the database.
 
 # The `skip_confirmation!` method sets the `confirmed_at` attribute
 # to avoid triggering an confirmation email when the User is saved.
 
 # The `save` method then saves this User to the database.

 # Create an Admin user
admin = User.new(
  name: 'Joel Ramsey',
  email: 'joel.d.ramsey@gmail.com',
  password: 'bomb2336'
 )
admin.skip_confirmation!
admin.save! 

 
puts "Seed finished"
puts "#{User.count} users created"
