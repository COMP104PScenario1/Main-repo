# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username: "robert", userpwd: "12345")
Listelement.create(time: "12:30", task: "Clean room", user_id: u1.id)
Listelement.create(time: "15:00", task: "Eat some ice cream", user_id: u1.id)
Listelement.create(time: "17:30", task: "Meetup with Mortimer", user_id: u1.id)

u2 = User.create(username: "mortimer", userpwd: "pwd")
Listelement.create(time: "11:00", task: "Eat lunch", user_id: u2.id)
Listelement.create(time: "14:00", task: "Do homework", user_id: u2.id)
Listelement.create(time: "17:30", task: "Meetup with Robert", user_id: u2.id)
