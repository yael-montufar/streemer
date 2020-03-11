require "open-uri"

User.destroy_all
PerformerProfile.destroy_all
Event.destroy_all
Review.destroy_all
Tip.destroy_all

puts "Creating live performers..."
performer_1 = PerformerProfile.create!(
  user: User.create!(email: "performer1@email.com", password: "123456"),
  stage_name: "Some Herd Trouble",
  bio: "From the moment Some Herd Trouble starts playing, people are drawn to the warm sounds they create.  As the lead Rhys sits amongst his instruments you feel the rhythmic pulse of the stomp box, and the haunting bluesy sounds of the harmonica.  His guitar work playing underneath while his raw, powerful and emotive vocals soar above."
)
performer_2 = PerformerProfile.create!(
  user: User.create!(email: "performer2@email.com", password: "123456"),
  stage_name: "The Space Cowboy",
  bio: "Since the Space Cowboy was just eight years old he has been perfecting the art of street theatre. His unique and incredibly skilled performance has been seen all around the world."
)
performer_3 = PerformerProfile.create!(
  user: User.create!(email: "performer3@email.com", password: "123456"),
  stage_name: "FloorLegendz",
  bio: "Floor LegendZ is a break dance crew taking over the streets of Mexico. Fun, vibrant and full of talent."
)
performer_4 = PerformerProfile.create!(
  user: User.create!(email: "performer4@email.com", password: "123456"),
  stage_name: "Angel",
  bio: "Charlotte is a singer / songwriter and extrememly poite and cheery street performer around Mexico City.  Charlotte writes observational dittys that will haunt your soul and takes her songs to the streets."
)
performer_5 = PerformerProfile.create!(
  user: User.create!(email: "performer5@email.com", password: "123456"),
  stage_name: "Tassel",
  bio: "Tassel is a singer-songwriter who moved to Mexico City in 2005.  He started playing guitar and writing songs in his teens and has performed ever since, playing regular gigs he started busking ever since. His songwriting is influenced by the folk singer tradition of Central America."
)
performer_6 = PerformerProfile.create!(
  user: User.create!(email: "performer6@email.com", password: "123456"),
  stage_name: "Stitch",
  bio: "A one man band playing the sax, guitar, piano, vocals and bass drums.  Originally from New Orleans.  I move to New York and then Meixco City. I love all kinds of music, I'm trained as a jazz player but also play blues, folk, gospel and country.  I love music and don't have a choice but to play, it's a calling that I have followed since a child."
)
performer_7 = PerformerProfile.create!(
  user: User.create!(email: "performer7@email.com", password: "123456"),
  stage_name: "Copywrite",
  bio: "A busker of multiple countries and 10 years experience, Jack sillfylly mixes guitar, vocals, beatboxing, looping, sampling and effects to create a powerful sound evoking an eclectic blend of folk, hip hop, rock, pop and base music.  Captivating performance with a unique atmosphere and rich, driving layers, all performed live. Expect a hell of a show."
)
performer_8 = PerformerProfile.create!(
  user: User.create!(email: "performer8@email.com", password: "123456"),
  stage_name: "Stooge Elk",
  bio: "Jayden has been all over Mexico performing at festivals to exhibit his art.  Mexican-born Jayden is an amazing, super-talented street artist. Using tools like a power drill, chisel, and different types of paint, Jayden literally scratches off the surface of buildings to create his masterpieces."
)

# ========== upcoming events ==============

puts "Creating upcoming events..."
upcoming_event_1 = Event.new(
  performer_profile: performer_1,
  name: "Event 1",
  description: "Cyber Punk",
  location:  "San Francisco",
  starts_at: Time.now + 1.day,
  ends_at: Time.now + 2.days,
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792269/c64a13a0-1f9a-390e-a6b7-efbe63ce1014_v6va3s.jpg")
     upcoming_event_1.photo.attach(io: file, filename: 'singer.jpg', content_type: 'image/jpg')
     upcoming_event_1.save!

upcoming_event_2 = Event.create!(
  performer_profile: performer_2,
  name: "Event 2",
  description: "Juggler",
  starts_at: Time.now + 6.hours,
  ends_at: Time.now + 12.hours,
  location: "Campeche 200, Hipódromo Condesa, Cuauhtémoc, 06170 Ciudad de México, CDMX",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792294/07ace029-7be6-39e7-b342-780f5cce9523_kxkn1a.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792294/07ace029-7be6-39e7-b342-780f5cce9523_kxkn1a.jpg")
     upcoming_event_2.photo.attach(io: file, filename: 'amp.jpg', content_type: 'image/jpg')
     upcoming_event_2.save!

upcoming_event_3 = Event.create!(
  performer_profile: performer_3,
  name: "Indigoing",
  description: "Breakdance",
  starts_at: Time.now + rand(1..3).days,
  ends_at: Time.now + rand(2..30).minutes + rand(2..6).hours,
  location: "Los Angeles",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792296/tx2ywwIZAF-compress_y3stte.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792296/tx2ywwIZAF-compress_y3stte.jpg")
     upcoming_event_3.photo.attach(io: file, filename: 'singer.jpg', content_type: 'image/jpg')
     upcoming_event_3.save!

upcoming_event_4 = Event.create!(
  performer_profile: performer_4,
  name: "Botanical",
  description: "Cover Band",
  starts_at: Time.now + rand(1..3).days,
  ends_at: Time.now + rand(2..30).minutes + rand(2..6).hours,
  location: "Fernando Montes de Oca 28 - Ciudad de México, CDMX",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792298/VEADo0XoZj-compress_flsqex.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792298/VEADo0XoZj-compress_flsqex.jpg")
     upcoming_event_4.photo.attach(io: file, filename: 'chello.jpg', content_type: 'image/jpg')
     upcoming_event_4.save!

upcoming_event_5 = Event.create!(
  performer_profile: performer_5,
  name: "MonkeyBusiness",
  description: "Cover Band",
  starts_at: Time.now + rand(1..3).days,
  ends_at: Time.now + rand(2..30).minutes + rand(2..6).hours,
  location: "Las Vegas",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792300/dcf0c539-bf19-3303-8c19-ccd1d4da2b67_zq4by6.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792300/dcf0c539-bf19-3303-8c19-ccd1d4da2b67_zq4by6.jpg")
     upcoming_event_5.photo.attach(io: file, filename: 'tango.jpg', content_type: 'image/jpg')
     upcoming_event_5.save!

upcoming_event_6 = Event.create!(
  performer_profile: performer_6,
  name: "Soulvibezzz",
  description: "Jazz",
  starts_at: Time.now + rand(1..3).days,
  ends_at: Time.now + rand(2..30).minutes + rand(2..6).hours,
  location: "Campeche 233, Hipódromo Condesa, Cuauhtémoc, 06170 Ciudad de México, CDMX",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792302/6dfc3f05-9f4e-3e11-865c-404cf6296202_gv0buz.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792302/6dfc3f05-9f4e-3e11-865c-404cf6296202_gv0buz.jpg")
     upcoming_event_6.photo.attach(io: file, filename: 'fire.jpg', content_type: 'image/jpg')
     upcoming_event_6.save!

upcoming_event_7 = Event.create!(
  performer_profile: performer_7,
  name: "Unhinged",
  description: "Rock",
  starts_at: Time.now + rand(1..3).days,
  ends_at: Time.now + rand(2..30).minutes + rand(2..6).hours,
  location: "Dallas",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792304/83185af5-a301-3a0f-8b36-a4aef4658bf3_uli9mc.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792304/83185af5-a301-3a0f-8b36-a4aef4658bf3_uli9mc.jpg")
     upcoming_event_7.photo.attach(io: file, filename: 'break-dance.jpg', content_type: 'image/jpg')
     upcoming_event_7.save!

upcoming_event_8 = Event.create!(
  performer_profile: performer_8,
  name: "SouthWest",
  description: "Street Art",
  starts_at: Time.now + rand(1..3).days,
  ends_at: Time.now + rand(2..30).minutes + rand(2..6).hours,
  location: "Bosque de Chapultepec, Miguel Hidalgo, Mexico City, CDMX, Mexico",
  # photo: "https://res.cloudinary.com/yaelmontufar/image/upload/v1583792306/27e4ec2e-491e-357d-bf5f-f77abe096614_yswyjn.jpg",
)
file = URI.open("https://res.cloudinary.com/yaelmontufar/image/upload/v1583792306/27e4ec2e-491e-357d-bf5f-f77abe096614_yswyjn.jpg")
     upcoming_event_8.photo.attach(io: file, filename: 'drummers.jpg', content_type: 'image/jpg')
     upcoming_event_8.save!


# ============== live events ==========

puts "Creating live events..."
live_event_1 = Event.create!(
  performer_profile: performer_1,
  name: "Hello Neighbour",
  description: "Jazz Music",
  location:  "Lerdo 206, Guerrero, Mexico City, CDMX, Mexico",
  # starts_at: Time.now + 40.minutes,
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 40.minutes + 1.hour,
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v239617707",
)
live_event_2 = Event.create!(
  performer_profile: performer_2,
  name: "Velocity",
  description: "Juggler",
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 40.minutes + 1.hour,
  location: "Queretaro",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v238264042",
)
live_event_3 = Event.create!(
  performer_profile: performer_3,
  name: "Indigoing",
  description: "Breakdance",
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 40.minutes + 2.hour,
  location: "Av Insurgentes Sur 644, Del Valle, Benito Juarez, Mexico City, CDMX, Mexico",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v238218178",
)
live_event_4 = Event.create!(
  performer_profile: performer_4,
  name: "Botanical",
  description: "Cover Band",
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 40.minutes + 1.hour,
  location: "Jalisco",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v238274963",
)
live_event_5 = Event.create!(
  performer_profile: performer_5,
  name: "MonkeyBusiness",
  description: "Cover Band",
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 40.minutes + 2.hour,
  location: "Av Insurgentes Sur 710, Del Valle, Benito Juarez, Mexico City, CDMX, Mexico",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v546129488",
)
live_event_6 = Event.create!(
  performer_profile: performer_6,
  name: "Soulvibezzz",
  description: "Jazz",
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 10.minutes + 1.hour,
  location: "Hidalgo",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v238257236",
)
live_event_7 = Event.create!(
  performer_profile: performer_7,
  name: "Unhinged",
  description: "Rock",
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 40.minutes + 2.hour,
  location: "Rubens 6, Benito Juárez, San Juan, Mexico City, CDMX, Mexico",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v238183579",
)
live_event_8 = Event.create!(
  performer_profile: performer_8,
  name: "SouthWest",
  description: "Street Art",
  starts_at: Time.now - rand(2..60).minutes,
  ends_at: Time.now + 40.minutes + 1.hour,
  location: "Puebla",
  twitch_id: "https://player.twitch.tv/?autoplay=false&video=v237750416",
)

puts "Creating patrons..."
patron_1 = User.create!(
  email: "patron1@email.com",
  password: "123456"
)
patron_2 = User.create!(
  email: "patron2@email.com",
  password: "123456"
)
patron_3 = User.create!(
  email: "patron3@email.com",
  password: "123456"
)
patron_4 = User.create!(
  email: "patron4@email.com",
  password: "123456"
)
patron_5 = User.create!(
  email: "patron5@email.com",
  password: "123456"
)
patron_6 = User.create!(
  email: "patron6@email.com",
  password: "123456"
)
patron_7 = User.create!(
  email: "patron7@email.com",
  password: "123456"
)
patron_8 = User.create!(
  email: "patron8@email.com",
  password: "123456"
)

puts "Patrons are giving tips..."
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_1,
  performer_profile: performer_1
)
Tip.create!(
  amount: 10,
  state: "pending",
  user: patron_2,
  performer_profile: performer_1
)
Tip.create!(
  amount: 1,
  state: "paid",
  user: patron_2,
  performer_profile: performer_2
)
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_3,
  performer_profile: performer_3
)
Tip.create!(
  amount: 1,
  state: "pending",
  user: patron_4,
  performer_profile: performer_4
)
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_5,
  performer_profile: performer_5
)
Tip.create!(
  amount: 10,
  state: "pending",
  user: patron_6,
  performer_profile: performer_6
)
Tip.create!(
  amount: 5,
  state: "paid",
  user: patron_7,
  performer_profile: performer_7
)
Tip.create!(
  amount: 2,
  state: "paid",
  user: patron_8,
  performer_profile: performer_8
)

puts "Creating reviews for live performers.."

review_1 = Review.create!(
content: "Excelent show. I love it!",
performer_profile: performer_1
)
review_2 = Review.create!(
content: "I would never get tired of seeing this show",
performer_profile: performer_2
)
review_3 = Review.create!(
content: "Great event!",
performer_profile: performer_3
)
review_4 = Review.create!(
content: "It is an unique an interisting show",
performer_profile: performer_4
)
review_5 = Review.create!(
content: "Good performance",
performer_profile: performer_5
)
review_6 = Review.create!(
content: "No doubtat all, one of the best shows I've ever seen",
performer_profile: performer_6
)
review_7 = Review.create!(
content: "I would recommend it to all!",
performer_profile: performer_7
)
review_8 = Review.create!(
content: "Nice show",
performer_profile: performer_8
)


# "https://player.twitch.tv/?autoplay=false&video=v239617707" "london"  "guitar"
# "https://player.twitch.tv/?autoplay=false&video=v238264042" "praga"   "harp"
# "https://player.twitch.tv/?autoplay=false&video=v238218178" "italy"   "onemanband"
# "https://player.twitch.tv/?autoplay=false&video=v238274963" "london"  "guitar"
# # "https://player.twitch.tv/?autoplay=false&video=v238276318" "london"  "guitar"
# "https://player.twitch.tv/?autoplay=false&video=v546129488" "praga"   "glass"
# "https://player.twitch.tv/?autoplay=false&video=v238257236" "japan"   "drummer"
# "https://player.twitch.tv/?autoplay=false&video=v238183579" "africa"  "kaira"
# # "https://player.twitch.tv/?autoplay=false&video=v237749076" "hang"
# # "https://player.twitch.tv/?autoplay=false&video=v237782664" "erhu"
# "https://player.twitch.tv/?autoplay=false&video=v237750416" "beatbox"
