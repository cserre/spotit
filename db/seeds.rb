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
  street: '12 rue Diderot', city: 'Lyon', description: "x", price: "2000", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Appart de ooooouuuufffff, trop beau',
  street: '20 rue de la gare ', city: 'Lyon', description: "x", price: "3000", visible: true,
  style: "cosy", post_code: 94300, area: 300, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Super appart en plein paris, vue sur montmartre et proximité des transports',
  street: '12 rue de la gare', city: 'Bordeaux', description: "x", price: "4000", visible: true,
  style: "industriel", post_code: 94300, area: 55, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Best place for your photo shootings in Paris',
  street: '12 rue Voltaire', city: 'Bordeaux', description: "x", price: "20000", visible: true,
  style: "industriel", post_code: 94300, area: 83, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy flat with swimming pool',
  street: '12 avenue du Général de Gaulle', city: 'Paris', description: "x", price: "200", visible: true,
  style: "industriel", post_code: 94300, area: 435, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 3)

Spot.create(title: 'A beautiful garden near Paris for shootings en plein air',
  street: '12 rue Voltaire', city: 'Paris', description: "x", price: "21000", visible: true,
  style: "industriel", post_code: 94300, area: 438, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Cave voutée pour shooting intimistes',
  street: '12 rue Oberkampf', city: 'Paris', description: "x", price: "2300", visible: true,
  style: "industriel", post_code: 94300, area: 34, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '2 rue Oberkampf', city: 'Paris', description: "x", price: "900", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 4)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '1 rue de la gare', city: 'Lyon', description: "x", price: "2000", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Appart de ooooouuuufffff, trop beau',
  street: '30 rue de la gare', city: 'Lyon', description: "x", price: "3000", visible: true,
  style: "cosy", post_code: 94300, area: 300, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Super appart en plein paris, vue sur montmartre et proximité des transports',
  street: '1 rue de la gare', city: 'Bordeaux', description: "x", price: "4000", visible: true,
  style: "industriel", post_code: 94300, area: 55, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Best place for your photo shootings in Paris',
  street: '30 rue de la gare', city: 'Bordeaux', description: "x", price: "20000", visible: true,
  style: "industriel", post_code: 94300, area: 83, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy flat with swimming pool',
  street: '2 rue du roule', city: 'Paris', description: "x", price: "200", visible: true,
  style: "industriel", post_code: 94300, area: 435, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 3)

Spot.create(title: 'A beautiful garden near Paris for shootings en plein air',
  street: '12 rue de saint denis', city: 'Paris', description: "x", price: "21000", visible: true,
  style: "industriel", post_code: 94300, area: 438, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Cave voutée pour shooting intimistes',
  street: '20 rue de saint denis', city: 'Paris', description: "x", price: "2300", visible: true,
  style: "industriel", post_code: 94300, area: 34, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '60 rue de saint denis', city: 'Paris', description: "x", price: "900", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 4)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '20 rue de saint denis', city: 'Lyon', description: "x", price: "2000", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Appart de ooooouuuufffff, trop beau',
  street: '10 rue de saint denis', city: 'Lyon', description: "x", price: "3000", visible: true,
  style: "cosy", post_code: 94300, area: 300, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Super appart en plein paris, vue sur montmartre et proximité des transports',
  street: '20 rue de saint denis', city: 'Bordeaux', description: "x", price: "4000", visible: true,
  style: "industriel", post_code: 94300, area: 55, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Best place for your photo shootings in Paris',
  street: '28 rue de saint denis', city: 'Bordeaux', description: "x", price: "20000", visible: true,
  style: "industriel", post_code: 94300, area: 83, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy flat with swimming pool',
  street: '10 boulevard menilmontant', city: 'Paris', description: "x", price: "200", visible: true,
  style: "industriel", post_code: 94300, area: 435, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 3)

Spot.create(title: 'A beautiful garden near Paris for shootings en plein air',
  street: '19 boulevard menilmontant', city: 'Paris', description: "x", price: "21000", visible: true,
  style: "industriel", post_code: 94300, area: 438, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Cave voutée pour shooting intimistes',
  street: '100 boulevard menilmontant', city: 'Paris', description: "x", price: "2300", visible: true,
  style: "industriel", post_code: 94300, area: 34, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '200 rue de saint denis', city: 'Paris', description: "x", price: "900", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 4)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '10 rue du roule', city: 'Lyon', description: "x", price: "2000", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Appart de ooooouuuufffff, trop beau',
  street: '12 rue du roule', city: 'Lyon', description: "x", price: "3000", visible: true,
  style: "cosy", post_code: 94300, area: 300, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Super appart en plein paris, vue sur montmartre et proximité des transports',
  street: '12 rue du roule', city: 'Bordeaux', description: "x", price: "4000", visible: true,
  style: "industriel", post_code: 94300, area: 55, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Best place for your photo shootings in Paris',
  street: '12 rue de Paris', city: 'Bordeaux', description: "x", price: "20000", visible: true,
  style: "industriel", post_code: 94300, area: 83, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy flat with swimming pool',
  street: '12 rue de saussure', city: 'Paris', description: "x", price: "200", visible: true,
  style: "industriel", post_code: 94300, area: 435, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 3)

Spot.create(title: 'A beautiful garden near Paris for shootings en plein air',
  street: '32 rue de saussure', city: 'Paris', description: "x", price: "21000", visible: true,
  style: "industriel", post_code: 94300, area: 438, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Cave voutée pour shooting intimistes',
  street: '52 rue de saussure', city: 'Paris', description: "x", price: "2300", visible: true,
  style: "industriel", post_code: 94300, area: 34, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '1 rue de saussure', city: 'Paris', description: "x", price: "900", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 4)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '12 rue de saussure', city: 'Lyon', description: "x", price: "2000", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Appart de ooooouuuufffff, trop beau',
  street: '12 boulevard voltaire', city: 'Lyon', description: "x", price: "3000", visible: true,
  style: "cosy", post_code: 94300, area: 300, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Super appart en plein paris, vue sur montmartre et proximité des transports',
  street: '12 boulevard voltaire', city: 'Bordeaux', description: "x", price: "4000", visible: true,
  style: "industriel", post_code: 94300, area: 55, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Best place for your photo shootings in Paris',
  street: '100 boulevard voltaire', city: 'Bordeaux', description: "x", price: "20000", visible: true,
  style: "industriel", post_code: 94300, area: 83, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy flat with swimming pool',
  street: '100 boulevard voltaire', city: 'Paris', description: "x", price: "200", visible: true,
  style: "industriel", post_code: 94300, area: 435, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 3)

Spot.create(title: 'A beautiful garden near Paris for shootings en plein air',
  street: '110 boulevard voltaire', city: 'Paris', description: "x", price: "21000", visible: true,
  style: "industriel", post_code: 94300, area: 438, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 2)

Spot.create(title: 'Cave voutée pour shooting intimistes',
  street: '11 boulevard voltaire', city: 'Paris', description: "x", price: "2300", visible: true,
  style: "industriel", post_code: 94300, area: 34, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 1)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '12 rue de vincennes', city: 'Paris', description: "x", price: "900", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 4)

Spot.create(title: 'Crazy appartment with big terrace, jaccuzi and view on Eiffel Tower',
  street: '18 rue de vincennes', city: 'Paris', description: "x", price: "900", visible: true,
  style: "industriel", post_code: 94300, area: 200, exposition:"SE", exceptional_view: true,
  modular_furniture: true, user_id: 4)



