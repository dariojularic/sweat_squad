# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Review.destroy_all

dario = User.new(email: "dario@gmail.com", password: "password", username: "Dario", about_me: "Sup! My name is Dario and I am a below average web developer and rock solid table tennis player. Aside from ping-pong I also like to play beerpong. I like it mostly because of the beer..." )
dario.photo.attach(io: File.open(Rails.root.join("app/assets/images/Dario.jpg")), filename: "dario.jpg", content_type: "image/png")
dario.save!

daniel = User.new(email: "daniel@gmail.com", password: "password", username: "Daniel", about_me: "Hi there, my name is Daniel and I am a golf enthusiast. I have been playing for years now and I am always looking for someone to play with. I usually play on weekends and I am looking for someone who shares the same passion for golf. Let's hit the course together and work on our swings!")
daniel.photo.attach(io: File.open(Rails.root.join("app/assets/images/Daniel.png")), filename: "dario.jpg", content_type: "image/png")
daniel.save!

lucas = User.new(email: "lucas@gmail.com", password: "password", username: "Lucas", about_me: "What's up, guys? My name is Lucas and I am a basketball player. I have been playing for years now and I am always looking for someone to play with.I thought it would be great to find some basketball buddys. I am free on weekends and I am always up for a game. Let's hit the court and shoot some hoops!" )
lucas.photo.attach(io: File.open(Rails.root.join("app/assets/images/Lucas.png")), filename: "dario.jpg", content_type: "image/png")
lucas.save!

dion = User.new(email: "dion@gmail.com", password: "password", username: "Dion", about_me: "Hey, I'm Dion, and I'm a beach volleyball enthusiast! I love the sand, sun, and competitive atmosphere of the game. It's a rush to dive for a ball and make a game-saving play. Whether playing with friends or strangers, I'm always looking to improve my skills on the court." )
dion.photo.attach(io: File.open(Rails.root.join("app/assets/images/Dion.jpg")), filename: "dario.jpg", content_type: "image/png")
dion.save!

boris = User.new(email: "boris@gmail.com", password: "password", username: "Boris", about_me: "Hey, I'm Boris, and ultimate frisbee is my sport of choice! I love the creativity, teamwork, and friendly community of players. It's a great way to stay active, make new friends, and have a blast while doing it. Making a sweet catch or a crazy throw always gets my heart pumping." )
boris.photo.attach(io: File.open(Rails.root.join("app/assets/images/Boris.jpg")), filename: "dario.jpg", content_type: "image/png")
boris.save!

mlilo = User.new(email: "mlilo@gmail.com", password: "password", username:"Mlilo", about_me: "Hi there, I'm Mlilo, and roller derby is my thing! I love the adrenaline rush of racing around the track and the challenge of knocking down opponents. It's a high-energy, fast-paced sport that requires both physical and mental strength, and I'm constantly pushing myself to be the best I can be." )
mlilo.photo.attach(io: File.open(Rails.root.join("app/assets/images/Mlilo.jpg")), filename: "dario.jpg", content_type: "image/png")
mlilo.save!

bethy = User.new(email: "bethy@gmail.com", password: "password", username: "Bethy", about_me: "Hey, everyone! My name is Bethy and I am a tennis player. I have been playing for years now and I am always looking for someone to play with. I am free on weekdays and I am looking for someone to join me. Let's hit the court and serve some aces!" )
bethy.photo.attach(io: File.open(Rails.root.join("app/assets/images/Bethy.jpg")), filename: "dario.jpg", content_type: "image/png")
bethy.save!

theresia = User.new(email: "theresia@gmail.com", password: "password", username: "Theresia", about_me: "Hi, I'm Theresia and I love playing badminton! I've been using this sports app to find badminton buddies and it's been great. I usually play on weekends and I'm looking for someone to join me. I love the fast-paced nature of the game and the workout it gives me. Let's hit the court and smash some birdies!" )
theresia.photo.attach(io: File.open(Rails.root.join("app/assets/images/Theresia.png")), filename: "dario.jpg", content_type: "image/png")
theresia.save!
# lucas.image = "https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{lucas.username}.jpg"
# lucas.save!
puts "Created #{User.count} users"

dario_event = SportEvent.new(sport: "TableTennis", address: "Kreuzstraße, Munich", start_at: "2023-08-01 12:00:00", user: dario, description: "Want to come play some table tennis and hang out with us this weekend? We're organizing a friendly tournament and would love for you to join in on the fun.")
dario_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{dario_event.sport}#{rand(1..3)}.jpg"), filename: "#{dario_event.sport}.jpg", content_type: 'image/jpg')
dario_event.save!

daniel_event = SportEvent.new(sport: "Golf", address: "Balanstraße, Munich", start_at: "2023-08-01 12:00:00", user: daniel, description: "Hey there! I'm looking for someone to play golf with this weekend. I'm a beginner and I'm looking for someone who can teach me the basics. I'm free on weekends and I'm looking for someone to join me. Let's hit the course and work on our swings!")
daniel_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{daniel_event.sport}#{rand(1..3)}.jpg"), filename: "#{daniel_event.sport}.jpg", content_type: 'image/jpg')
daniel_event.save!

lucas_event = SportEvent.new(sport: "Basketball", address: "Quiddestraße, Munich", start_at: "2023-08-01 12:00:00", user: lucas, description: "Want to shoot some hoops and hang out this weekend? We're getting a group together for a casual basketball game at the park. All skill levels are welcome, so come join us!")
lucas_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{lucas_event.sport}#{rand(1..3)}.jpg"), filename: "#{lucas_event.sport}.jpg", content_type: 'image/jpg')
lucas_event.save!

dion_event = SportEvent.new(sport: "Volleyball", address: "Leopoldstraße, Munich", start_at: "2023-08-01 12:00:00", user: dion, description: "Hey, if you are free this weekend and want to play some beach volleyball, let me know! I'm looking for someone to join me.")
dion_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{dion_event.sport}#{rand(1..3)}.jpg"), filename: "#{dion_event.sport}.jpg", content_type: 'image/jpg')
dion_event.save!

boris_event = SportEvent.new(sport: "Tennis", address: "Tal, Munich, Bavaria", start_at: "2023-08-01 12:00:00", user: boris, description: "Sup guys! Wanna play some serious tennis? Don't forget to bring your A-game!")
boris_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{boris_event.sport}#{rand(1..3)}.jpg"), filename: "#{boris_event.sport}.jpg", content_type: 'image/jpg')
boris_event.save!

mlilo_event = SportEvent.new(sport: "TableTennis", address: "Ludwigstraße, Munich", start_at: "2023-08-01 12:00:00", user: mlilo, description: "Hey there! If you want to play some table tennis after work, let me know! I'm looking for someone to join me.")
mlilo_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{mlilo_event.sport}#{rand(1..3)}.jpg"), filename: "#{mlilo_event.sport}.jpg", content_type: 'image/jpg')
mlilo_event.save!

bethy_event = SportEvent.new(sport: "Tennis", address: "Ungererstraße, Munich", start_at: "2023-08-01 12:00:00", user: bethy, description: "Hello! I'm looking for a very serious tennis player and if you are free this weekend, let me know! I'm looking for someone to join me.")
bethy_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{bethy_event.sport}#{rand(1..3)}.jpg"), filename: "#{bethy_event.sport}.jpg", content_type: 'image/jpg')
bethy_event.save!

theresia_event = SportEvent.new(sport: "Badminton", address: "Bauerstraße, Munich", start_at: "2023-08-01 12:00:00", user: theresia, description: "Hey there! If you are tired of coding all day and you want to play somde badminton, let me know! I'm looking for someone to join me.")
theresia_event.photo.attach(io: URI.open("https://res.cloudinary.com/dc5dpsxvz/image/upload/v1678396659/SweatSquad/#{theresia_event.sport}#{rand(1..3)}.jpg"), filename: "#{theresia_event.sport}.jpg", content_type: 'image/jpg')
theresia_event.save!

dario_review = Review.create!(rating: 5, content: "Dario is a reliable workout buddy, always making exercise fun. I would definitely recommend him to anyone looking to play some table tennis.", sport_event: dario_event, user: daniel)

theresia_review = Review.create!(rating: 4, content: "We had a good game, but he was 30 minutes late and didn't even bring the equipment.", sport_event: dario_event, user: lucas)

lucas_review = Review.create!(rating: 3, content: "Dario's lack of skill and focus make him a weak golf partner.", sport_event: dario_event, user: dion)

boris_review = Review.create!(rating: 2, content: "Dario's lack of control and sportsmanship make him a terrible tennis opponent.", sport_event: dario_event, user: mlilo)

dion_review = Review.create!(rating: 5, content: "Mlilo is a skilled and fun tennis partner, a pleasure to play with.", sport_event: mlilo_event, user: boris)

mlilo_review = Review.create!(rating: 5, content: "Mlilo is a #great person. He is very friendly and welcoming. I had a great time playing badminton with him. I would definitely recommend him to anyone looking to play some basketball.", sport_event: mlilo_event, user: bethy)

bethy_review = Review.create!(rating: 5, content: "Mlilo is a great golf partner. So knowledgeable and helpful.", sport_event: mlilo_event, user: theresia)

daniel_review = Review.create!(rating: 5, content: "Mlilo is a reliable workout buddy, always making exercise fun. I would definitely recommend him to anyone looking to play some badminton.", sport_event: mlilo_event, user: dario)
