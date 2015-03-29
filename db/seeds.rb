# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Card.destroy_all

aparna = User.create(first_name: "Aparna", last_name: "Sainath")
shilpa = User.create(first_name: "Shilpa", last_name: "Kumar")

birthday = Card.create(title: "happy b'day", desc: "many many")
congrats = Card.create(title: "congrats", desc: "yay!!!!")


aparna.cards << congrats
shilpa.cards << birthday