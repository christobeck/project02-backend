# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# @file = Rack::Test::UploadedFile.new(Rails.root + 'boston_slider.jpg', 'image/jpg')
# Picture.create!(image: @file)

User.destroy_all
Building.destroy_all

User.create!(name:'Chris Tobeck', email:'ctobeck@gmail.com', username:'christobie', hood:'Bay Village', city:'Boston')
User.create!(name:'Alice Tester', email:'alice@email.com', username:'alicewonderland', hood:'Fenway', city:'Boston')
User.create!(name:'Bob Tester', email:'bob@email.com', username:'BobbyBoston', hood:'South Boston', city:'Boston')

Building.create!(name:'Wilkes Passage', street_num:'1313', street_name:'Washington Street', hood:'South End', city:'Boston', zip:'02118')
Building.create!(name:'Laconia Lofts', street_num:'1200', street_name:'Washington Street', hood:'South End', city:'Boston', zip:'02118')
Building.create!(name:'Millennium Tower', street_num:'1', street_name:'Franklin Street', hood:'Downtown', city:'Boston', zip:'02108')

@file = Rack::Test::UploadedFile.new(Rails.root + 'boston_slider.jpg', 'image/jpg')
Picture.create!(caption: "This is Boston!", image: @file )

