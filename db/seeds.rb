# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting seeds..."

Comment.destroy_all
Follow.destroy_all
Like.destroy_all
Location.destroy_all
Post.destroy_all
User.destroy_all


# Users: --------------------------------------------------------------------------
puts "creating users..."

alpaca = User.create(name: "Alpaca", username: "Yukari", password: "PacaPlus!", bio: "Utterly divine beauty.", img_url:"https://steamuserimages-a.akamaihd.net/ugc/155779292617665239/623197DC394F005B5312D34FDA4F1F688D1DD441/")
llama = User.create(name: "Llama", username: "Tina", password: "Napoleon!", bio: "Casserole is my favorite!", img_url:"https://i.pinimg.com/originals/f4/06/7a/f4067a07ad1aec726bbe767a63749c6e.jpg")
bactrian = User.create(name: "Bactrian", username: "B", password: "DoubleHump", bio: "I am superior to Dromedary as I have not one, but TWO humps ~(- w *)", img_url:"https://www.britannica.com/explore/savingearth/wp-content/uploads/sites/4/2020/04/bactrian-2.jpg")
llamaQAra = User.create(name: "LLama Q'Ara", username: "OG", password: "TheOrigins", bio: "My breed is the OG... Don't mess with me.", img_url:"https://llamas.org.nz/wp-content/uploads/2017/09/ccarallama5.jpg")
guanaco = User.create(name: "Guanaco", username: "Speedy", password: "ZoomZoomZoom", bio: "Bad Boi Gang, my breed is the fastest!", img_url:"https://i.pinimg.com/originals/31/c4/aa/31c4aa1496c2f3bf69298044d8350087.jpg")
vicuna = User.create(name: "Vicuna", username: "Royalty", password: "RichAndProud", bio: "Wool worth more than gold, talk to the hoof v_(-_-)", img_url:"https://thumbs-prod.si-cdn.com/JedRp5dzMrlg4VQVcsALijhaR9o=/fit-in/1600x0/https://public-media.si-cdn.com/filer/5f/91/5f91aea6-e220-478f-b39e-1dd298b52734/dsc_8698_640x425.jpg")
f1Hybrid = User.create(name: "F1 Hybrid", username: "Humphry", password: "BigBoned!", bio: "I'm not fat, just big-boned. Love child of Bactrian and Dromedary, got the best of both worlds... sorta...", img_url:"https://i.pinimg.com/originals/73/9d/63/739d636b1de40106dc066ec82528f98e.jpg")
alpacaSuri = User.create(name: "Alpaca Suri", username: "ArupakaSuri", password: "KemonoFriends", bio: "Oh, greetings. It's about time for a hair cut. Ah, my hair just keeps on growing. Thus, I have to cut it myself. If it's about hair, leave it to me.", img_url:"https://static.zerochan.net/Suri.Alpaca.%28Kemono.Friends%29.full.2166100.jpg")
dromedary = User.create(name: "Dromedary", username: "D", password: "SingleHump", bio: "I am superior to Bactrian as I can drink 100 gallons of water in just 13 minutes!", img_url:"https://pm1.narvii.com/6014/75651e9a28ed14697e39729970418d2f17737af0_hq.jpg")

puts "created users..."


# Follows: -------------------------------------------------------------------------
puts "creating follows..."

f1 = Follow.create(follower_id: alpaca.id, following_id: llama.id)
f2 = Follow.create(follower_id: llama.id, following_id: alpaca.id)
f3 = Follow.create(follower_id: bactrian.id, following_id: alpaca.id)
f4 = Follow.create(follower_id: llamaQAra.id, following_id: llama.id)
f5 = Follow.create(follower_id: guanaco.id, following_id: alpaca.id)
f6 = Follow.create(follower_id: vicuna.id, following_id: alpaca.id)
f7 = Follow.create(follower_id: f1Hybrid.id, following_id: llama.id)
f8 = Follow.create(follower_id: alpacaSuri.id, following_id: llama.id)
f9 = Follow.create(follower_id: dromedary.id, following_id: llama.id)
f10 = Follow.create(follower_id: alpaca.id, following_id: vicuna.id)
f11 = Follow.create(follower_id: alpaca.id, following_id: guanaco.id)
f12 = Follow.create(follower_id: llama.id, following_id: alpacaSuri.id)
f13 = Follow.create(follower_id: llama.id, following_id: llamaQAra.id)

puts "created follows..."


# Locations: ------------------------------------------------------------------------
puts "creating locations..."

chicago = Location.create(name: "Chicago", city: "Chicago", country: "United States")
tokyo = Location.create(name: "Tokyo", city: "Tokyo", country: "Japan")
paris = Location.create(name: "Paris", city: "Paris", country: "France")
newYorkCity = Location.create(name: "New York City", city: "New York City", country: "United States")
istanbul = Location.create(name: "Istanbul", city: "Istanbul", country: "Turkey")
london = Location.create(name: "London", city: "London", country: "United Kingdom")
cairo = Location.create(name: "Cairo", city: "Cairo", country: "Egypt")
agra = Location.create(name: "Agra", city: "Agra", country: "India")
seoul = Location.create(name: "Seoul", city: "Seoul", country: "South Korea")

puts "created locations..."


# Posts: --------------------------------------------------------------------------
puts "creating posts..."

p1 = Post.create(user_id: alpaca.id, location_id: chicago.id, content: "I am feeling very uncomfyyyy, the sky is always grey... Where is my Vitamin D!")
p2 = Post.create(user_id: llama.id, location_id: tokyo.id, content: "I need to be handfed Casserole or else I'm going to faint, oh how dark the world is, oh how cold the ground is, oh the cruel cruel fate that has befallen upon me, ME!")
p3 = Post.create(user_id: bactrian.id, location_id: paris.id, content: "The Eiffel Tower in inferior to me, how shallow some people think, wouldn't it be better if it had TWO humps rather than one?")
p4 = Post.create(user_id: llamaQAra.id, location_id: newYorkCity.id, content: "I feel a calling, yes, I feel my power swelling, I will be this city's friendly neighborhood Llama Q'Ara!")
p5 = Post.create(user_id: guanaco.id, location_id: istanbul.id, content: "YOOO, you guys need to come up here, there's this thing called Maras Dondurma and it slaps!")
p6 = Post.create(user_id: vicuna.id, location_id: london.id, content: "Just had tea with her Majesty, what a wonderful person she is! She told me of the time when a meteor struck the earth about 65 million years ago and her reptilian friends all passed away, such a trajic story.")
p7 = Post.create(user_id: f1Hybrid.id, location_id: cairo.id, content: "I feel at home for some reason, nobody's giving me strange looks. This is bliss.")
p8 = Post.create(user_id: alpacaSuri.id, location_id: agra.id, content: "Just got my hair braided and now I'm on my way to get henna, I'm loving the vibe here! Everyone is so friendly!")
p9 = Post.create(user_id: dromedary.id, location_id: seoul.id, content: "K-Pop knows what's up, they asked me if I could help them with a diss track for Bactrian, watch your back boy becuase you got some straight heat coming at you home slice, you'll see me on album covers from now on, word.")

puts "created posts..."


# Likes: --------------------------------------------------------------------------
puts "creating likes..."

l1 = Like.create(user_id: alpaca.id, post_id: p2.id)
l2 = Like.create(user_id: llama.id, post_id: p1.id)
l3 = Like.create(user_id: bactrian.id, post_id: p2.id)
l4 = Like.create(user_id: llamaQAra.id, post_id: p3.id)
l5 = Like.create(user_id: guanaco.id, post_id: p9.id)
l6 = Like.create(user_id: vicuna.id, post_id: p7.id)
l7 = Like.create(user_id: f1Hybrid.id, post_id: p1.id)
l8 = Like.create(user_id: alpacaSuri.id, post_id: p5.id)
l9 = Like.create(user_id: dromedary.id, post_id: p8.id)
l10 = Like.create(user_id: llama.id, post_id: p4.id)

puts "created likes..."


# Comments: ------------------------------------------------------------------------
puts "creating comments..."

c1 = Comment.create(user_id: alpaca.id, post_id: p2.id, content: "Don't go into the light at the end of the tunnel! Answer my calls! You still have your life ahead of you!")
c2 = Comment.create(user_id: llama.id, post_id: p1.id, content: "The world is cruel, what's a bit of Vitamin D going to do, just accept your fate already, we all die one day, ughh time is so slow...")
c3 = Comment.create(user_id: bactrian.id, post_id: p2.id, content: "Maybe if you had two humps, you would'nt starve that easily and cary more food around.")
c4 = Comment.create(user_id: llamaQAra.id, post_id: p3.id, content: "Why don't you try to build a tower, I'd love to see you try...")
c5 = Comment.create(user_id: guanaco.id, post_id: p9.id, content: "Hahaha, let's see how fast you spit those bars, I'm looking forward to the release!")
c6 = Comment.create(user_id: vicuna.id, post_id: p7.id, content: "I wonder if I can have a chat with King Tut there, are there any local spectars nearby?")
c7 = Comment.create(user_id: f1Hybrid.id, post_id: p1.id, content: "I know what you mean, sometimes I keep some vitamin gummy pills for ocasions like that, thankfully I dont need it here though, barely a cloud in the sky.")
c8 = Comment.create(user_id: alpacaSuri.id, post_id: p5.id, content: "I looked it up, looks so good!!!! I hear the snow is hand picked from the top of mountains and the milks fresh from the goats, sounds so yummy!!!!")
c9 = Comment.create(user_id: dromedary.id, post_id: p8.id, content: "Let's see a pic! I bet you look adorable as always!")
c10 = Comment.create(user_id: llama.id, post_id: p4.id, content: "What are you going to do, spit on people's faces?")
c11 = Comment.create(user_id: alpaca.id, post_id: p6.id, content: "A moment of silence for her Majesty's loss...")

puts "created comments..."


puts "Done!"
