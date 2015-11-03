# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'john@gmail.com', password: 'azerty1234', password_confirmation: 'azerty1234')
User.create(email: 'bob@gmail.com', password: 'azerty1234', password_confirmation: 'azerty1234')
User.create(email: 'tom@gmail.com', password: 'azerty1234', password_confirmation: 'azerty1234')
User.create(email: 'lea@gmail.com', password: 'azerty1234', password_confirmation: 'azerty1234')


Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  address: '12 rue de Paris', city: 'Lyon', description: "x", price: "2000", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)
Spot.create(title: 'Appart de ooooouuuufffff, trop beau',
  address: '12 rue de Paris', city: 'Lyon', description: "x", price: "3000", visible: true,
  style: "cosy", post_code: 94300, area: 300, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)
Spot.create(title: 'Super appart en plein paris, vue sur montmartre et proximité des transports',
  address: '12 rue de Paris', city: 'Bordeaux', description: "x", price: "4000", visible: true,
  style: "industriel", post_code: 94300, area: 55, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)
Spot.create(title: 'Best place for your photo shootings in Paris',
  address: '12 rue de Paris', city: 'Bordeaux', description: "x", price: "20000", visible: true,
  style: "industriel", post_code: 94300, area: 83, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)
Spot.create(title: 'Crazy flat with swimming pool',
  address: '12 rue de Paris', city: 'Paris', description: "x", price: "200", visible: true,
  style: "industriel", post_code: 94300, area: 435, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 3)
Spot.create(title: 'A beautiful garden near Paris for shootings en plein air',
  address: '12 rue de Paris', city: 'Paris', description: "x", price: "21000", visible: true,
  style: "industriel", post_code: 94300, area: 438, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)
Spot.create(title: 'Cave voutée pour shooting intimistes',
  address: '12 rue de Paris', city: 'Paris', description: "x", price: "2300", visible: true,
  style: "industriel", post_code: 94300, area: 34, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)
Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  address: '12 rue de Paris', city: 'Paris', description: "x", price: "900", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 4)
