# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Friend.create(name: "Emma Darling",
  location: "London",
  price: 50,
  interest: "Any social meetup, bars, food etc.",
  bio: "Fun loving and chatty, I enjoy good food and good wine!"
  )

Friend.create(name: "Mark Swollocks",
  location: "South East",
  price: 35,
  interest: "Sporting events, live or pubs.",
  bio: "I enjoy all sports and am happy to come and watch them with you, if you pay me."
  )

Friend.create(name: "Jack Stanley",
  location: "Crystal Palace",
  price: 45,
  interest: "Anything",
  bio: "I am a friendly guy who likes getting out and about and meeting new people."
  )

Friend.create(name: "Doris Day",
  location: "London",
  price: 75,
  interest: "Theatre, shows, plays, musicals.",
  bio: "I love the theatre and classical music. I am happy to join you for these events."
  )

Friend.create(name: "Rosie Perra",
  location: "Spain",
  price: 40,
  interest: "Food and long walks",
  bio: "I like eating nice food, going for nice walks in the park and hanging around with my family. Also sleeping."
  )

# t.string "name"
#     t.string "interest"
#     t.integer "price"
#     t.string "location"
#     t.text "bio"
