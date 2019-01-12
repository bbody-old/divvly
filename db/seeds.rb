# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create! :name => 'Brendon', :email => 'brendon.body@gmail.com', username: 'brendonbody', :password => 'topsecret', :password_confirmation => 'topsecret'
user2 = User.create! :name => 'Matty Johns', :email => 'matthew@gmail.com', username: 'mattyjohns', :password => 'topsecret', :password_confirmation => 'topsecret'
user3 = User.create! :name => 'Nathan Ahmed', :email => 'nath@gmail.com', username: 'nahmed', :password => 'topsecret', :password_confirmation => 'topsecret'

group = Group.create! :name => "Our house"
PaymentGroup.create! :name => "Vegetarians", group_id: group
PaymentGroup.create! :name => "Beer", group_id: group