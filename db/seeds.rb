# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

dario = User.create!(email: "dario@gmail.com", password: "password", username: "Dario" )
daniel = User.create(email: "daniel@gmail.com", password: "password", username: "Daniel", about_me: "Hi there, my name is Daniel and I am a golf enthusiast. I have been playing for years now and I am always looking for someone to play with. I came across this sports app and I thought it would be a great way to find golf partners. I usually play on weekends and I am looking for someone who shares the same passion for golf. Let's hit the course together and work on our swings!")
lucas = User.create(email: "lucas@gmail.com", password: "password", username: "Lucas", about_me: "What's up, guys? My name is Lucas and I am a basketball player. I have been playing for years now and I am always looking for someone to play with.I thought it would be great to find basketball friends. I am free on weekends and I am always up for a game. Let's hit the court and shoot some hoops!" )
dion = User.create(email: "dion@gmail.com", password: "password", username: "Dion", about_me: "" )
boris = User.create(email: "boris@gmail.com", password: "password", username: "Boris", about_me: "" )
mlilo = User.create(email: "mlilo@gmail.com", password: "password", username:"Mlilo", about_me: "" )
bethy = User.create(email: "bethy@gmail.com", password: "password", username: "Bethy", about_me: "" )
theresia = User.create(email: "theresia@gmail.com", password: "password", username: "Theresia", about_me: "" )
puts "Created #{User.count} users"

# dario_event = SportEvent.new(sport: )
# dario_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{dario_event.sport}#{rand(1..3)}.jpg"), filename: 'football.jpg', content_type: 'image/jpg')
# dario_event.save!

# daniel_event = SportEvent.new(sport: )
# lucas_event = SportEvent.new(sport: )
# dion_event = SportEvent.new(sport: )
# boris_event = SportEvent.new(sport: )
# mlilo_event = SportEvent.new(sport: )
# bethy_event = SportEvent.new(sport: )
# theresia_event = SportEvent.new(sport: )
