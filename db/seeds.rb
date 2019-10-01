# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




bobo = User.create(name: "Bojack", email: "bojack@bojack.com", password: "bobo")
juju = User.create(name: "Ju", email: "ju@ju.com", password: "juju")
popo = User.create(name: "Po", email: "po@po.com", password: "popo")


# popo.catchfriends.create(friendname: "Polianne", contact: "polipoti29494@gmail.com", reached_out: false)
# popo.catchfriends.create(friendname: "Tanaka", contact: "tetekaki2@gmail.com", reached_out: false)
# juju.catchfriends.create(friendname: "Shinji", contact: "shinjikun22@gmail.com", reached_out: false)
# juju.catchfriend.create(friendname: "Popo", contact: "mipo12223@gmail.com", reached_out: false)

Catchfriend.create(friendname: "Mary", contact: "marymary@gmail.com", reached_out: false)
Catchfriend.create(friendname: "Polianne", contact: "polipoti29494@gmail.com", reached_out: false)
Catchfriend.create(friendname: "Shinji", contact: "shinjikun22@gmail.com", reached_out: false)