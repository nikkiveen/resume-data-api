50.times do 
Student.create(
  :first_name => Faker::Name.first_name, 
  :last_name => Faker::Name.last_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number, 
  :short_bio => Faker::Lorem.paragraph,
  :linkedin_url => Faker::Internet.url,
  :twitter_handle => Faker::Internet.user_name,
  :blog => Faker::Internet.url,
  :resume_url => Faker::Internet.url,
  :github_url => Faker::Internet.url,
  :photo => 'https://account.socialbakers.com/default_user.png',
  :password => 'password'
  )
end 
 
50.times do
Education.create(
  :start_date => Faker::Date.backward(1000),
  :end_date => Faker::Date.backward(365),
  :degree => Faker::Book.genre,
  :university_name => Faker::University.name,
  :details => Faker::Lorem.sentences(1)
  )
end 

100.times do
Experience.create(
  :start_date => Faker::Date.backward(1000),
  :end_date => Faker::Date.backward(365),
  :job_title => Faker::Company.profession,
  :company_name => Faker::Company.name,
  :details => Faker::Lorem.sentences(1)
  )
end 

20.times do
Skill.create(
  :name => Faker::Lorem.words
)
end 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
