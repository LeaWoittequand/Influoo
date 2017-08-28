email = "@gmail.com"
fashion = Category.create!(name: "Fashion")
sport = Category.create!(name: "Sport")
new_tech = Category.create!(name: "New Tech")
pwd = "123456"
fashion_banner = "http://lorempixel.com/800/200/fashion/"
new_tech_banner = "http://lorempixel.com/800/200/technics/"
sport_banner = "http://lorempixel.com/800/200/sports/"
avatar_url = "http://lorempixel.com/150/150/people/"


require "json"
require "rest-client"

require 'twitter'

Subscription.create!(sku: 'subscription', name:'premium', price: 30)

User.create!( first_name: "Lea",
              last_name: "Woittequand",
              description: "I've created Cooker Market at the end of my studies. Passionate by web_marketing, i love to learn and understand new process.",
              email: "lea" + email,
              avatar: avatar_url,
              password: pwd
            )
User.create!( first_name: "Aurelien",
              last_name: "Bigo",
              description: "I have launched my own company 10 month ago, which is selling bicycle spare parts : carbon fibers only. We are selling online spare part and 'à la carte' road bicycles. The company is called : Stiff Bicycles Factory. ",
              email: "aurelien" + email,
              avatar: avatar_url,
              password: pwd
            )
User.create!( first_name: "Clement",
              last_name: "Meyer",
              description: "I really enjoy get my hand dirty and try some new things.
I aim to create video games, and for that, I need collaborators.",
              email: "clement" + email,
              avatar: avatar_url,
              password: pwd
            )
puts "Pro users created"

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_SECRET_KEY"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_SECRET_TOKEN"]
end
# twitter_url = 'https://api.twitter.com/1.1/users/show.json?screen_name=' + influencer.tw_username
sara_twitter = client.user("@collagevintage")

# FASHION
sara = User.create!( first_name: "Sara",
                    last_name: "Escudero",
                    description: "",
                    email: "sara" + email,
                    avatar: sara_twitter.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{sara.first_name} #{sara.last_name}",
                    fb_url: "https://www.facebook.com/CollageVintage/",
                    fb_followers: 494935,
                    ig_url: "https://www.instagram.com/collagevintage/",
                    ig_followers: 924533,
                    tw_username: sara_twitter.screen_name,
                    tw_followers: sara_twitter.followers_count,
                    description: sara_twitter.description,
                    language: sara_twitter.lang,
                    avatar: sara_twitter.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: sara_twitter.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: sara,
                    category: fashion
                    )

zoella_tw = client.user("@Zozeebo")

zoella = User.create!( first_name: "Zoella",
                    last_name: "Zeebo",
                    description: "",
                    email: "zoella" + email,
                    avatar: zoella_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
                    )
Influencer.create!( pseudo: "#{zoella.first_name} #{zoella.last_name}",
                    fb_url: "https://www.facebook.com/zoe.zoella",
                    fb_followers: 2666027,
                    ig_url: "https://www.instagram.com/zoella/",
                    ig_followers: 10825059,
                    tw_username: zoella_tw.screen_name,
                    tw_followers: zoella_tw.followers_count,
                    description: zoella_tw.description,
                    language: zoella_tw.lang,
                    avatar: zoella_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: zoella_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: zoella,
                    category: fashion
                  )

christene_tw = client.user("@Zozeebo")
christene = User.create!( first_name: "Christene",
              last_name: "Barberich",
              description: "",
              email: "christene" + email,
              avatar: christene_tw.profile_image_url.to_s.gsub('_normal', ''),
              password: pwd
            )
Influencer.create!( pseudo: "#{christene.first_name} #{christene.last_name}",
                    fb_url: "https://www.facebook.com/refinery29/",
                    fb_followers: 4748638,
                    ig_url: "https://www.instagram.com/refinery29/",
                    ig_followers: 1548850,
                    tw_username: christene_tw.screen_name,
                    tw_followers: christene_tw.followers_count,
                    description: christene_tw.description,
                    language: christene_tw.lang,
                    avatar: christene_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: christene_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: christene,
                    category: fashion
                  )

devyni_tw = client.user("@DEVYNIstyles")
devyni = User.create!( first_name: "Devyni",
              last_name: "Hightower",
              description: "",
              email: "devyni" + email,
              avatar: devyni_tw.profile_image_url.to_s.gsub('_normal', ''),
              password: pwd
            )
Influencer.create!( pseudo: "#{devyni.first_name} #{devyni.last_name}",
                    fb_url: "https://www.facebook.com/DEVYNIstyles/",
                    fb_followers: 423,
                    ig_url: "https://www.instagram.com/devynistyles/",
                    ig_followers: 8262,
                    tw_username: devyni_tw.screen_name,
                    tw_followers: devyni_tw.followers_count,
                    description: devyni_tw.description,
                    language: devyni_tw.lang,
                    avatar: devyni_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: devyni_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: devyni,
                    category: fashion
                  )

chiara_tw = client.user("@ChiaraFerragni")
chiara = User.create!( first_name: "Chiara",
              last_name: "Ferragni",
              description: "",
              email: "chiara" + email,
              avatar: chiara_tw.profile_image_url.to_s.gsub('_normal', ''),
              password: pwd
            )
Influencer.create!( pseudo: "#{chiara.first_name} #{chiara.last_name}",
                    fb_url: "https://www.facebook.com/theblondesalad/",
                    fb_followers: 1241361,
                    ig_url: "https://www.instagram.com/chiaraferragni/",
                    ig_followers: 8753976,
                    tw_username: chiara_tw.screen_name,
                    tw_followers: chiara_tw.followers_count,
                    description: chiara_tw.description,
                    language: chiara_tw.lang,
                    avatar: chiara_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: chiara_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: chiara,
                    category: fashion
                  )

mariano_tw = client.user("@marianodivaio")
mariano = User.create!( first_name: "Mariano",
              last_name: "Di Vaio",
              description: "",
              email: "mariano" + email,
              avatar: mariano_tw.profile_image_url.to_s.gsub('_normal', ''),
              password: pwd
            )
Influencer.create!( pseudo: "#{mariano.first_name} #{mariano.last_name}",
                    fb_url: "https://www.facebook.com/MARIANODIVAIO.FANPAGE/",
                    fb_followers: 3197403,
                    ig_url: "https://www.instagram.com/marianodivaio/",
                    ig_followers: 5668487,
                    tw_username: mariano_tw.screen_name,
                    tw_followers: mariano_tw.followers_count,
                    description: mariano_tw.description,
                    language: mariano_tw.lang,
                    avatar: mariano_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: mariano_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: mariano,
                    category: fashion
                  )

#DIGITAL
amy_tw = client.user("@AmyPorterfield")
amy = User.create!( first_name: "Amy",
              last_name: "Porterfield",
              description: "",
              email: "amy" + email,
              avatar: amy_tw.profile_image_url.to_s.gsub('_normal', ''),
              password: pwd
            )
Influencer.create!( pseudo: "#{amy.first_name} #{amy.last_name}",
                    fb_url: "https://www.facebook.com/AmyPorterfield",
                    fb_followers: 243298,
                    ig_url: "",
                    ig_followers: 0,
                    tw_username: amy_tw.screen_name,
                    tw_followers: amy_tw.followers_count,
                    description: amy_tw.description,
                    language: amy_tw.lang,
                    avatar: amy_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: amy_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: amy,
                    category: new_tech
                  )
melanie_tw = client.user("@MelanieDuncan7")
melanie = User.create!( first_name: "Melanie",
              last_name: "Duncan",
              description: "",
              email: "melanie" + email,
              avatar: melanie_tw.profile_image_url.to_s.gsub('_normal', ''),
              password: pwd
            )
Influencer.create!( pseudo: "#{melanie.first_name} #{melanie.last_name}",
                    fb_url: "https://www.facebook.com/pg/EntrepreneuressAcademy",
                    fb_followers: 243298,
                    ig_url: "",
                    ig_followers: 0,
                    tw_username: melanie_tw.screen_name,
                    tw_followers: melanie_tw.followers_count,
                    description: melanie_tw.description,
                    language: melanie_tw.lang,
                    avatar: melanie_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: melanie_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: melanie,
                    category: new_tech
                  )
jonathon_tw = client.user("@jcolman")
jonathon = User.create!( first_name: "Jonathon",
              last_name: "Colman",
              description: "",
              email: "jonathon" + email,
              avatar: jonathon_tw.profile_image_url.to_s.gsub('_normal', ''),
              password: pwd
            )
Influencer.create!( pseudo: "#{jonathon.first_name} #{jonathon.last_name}",
                    fb_url: "https://www.facebook.com/jcolman",
                    fb_followers: 1762,
                    ig_url: "",
                    ig_followers: 0,
                    tw_username: "@jcolman",
                    tw_username: jonathon_tw.screen_name,
                    tw_followers: jonathon_tw.followers_count,
                    description: jonathon_tw.description,
                    language: jonathon_tw.lang,
                    avatar: jonathon_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: jonathon_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: jonathon,
                    category: new_tech
                  )

anne_tw = client.user("@annedubndidu")
anne = User.create!( first_name: "Anne",
                    last_name: "Dubndidu",
                    description: "",
                    email: "anne" + email,
                    avatar: anne_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{anne.first_name} #{anne.last_name}",
                    fb_url: "https://www.facebook.com/pg/annedubndidu/",
                    fb_followers: 30901,
                    ig_url: "https://www.instagram.com/annedubndidu/",
                    ig_followers: 105000,
                    tw_username: anne_tw.screen_name,
                    tw_followers: anne_tw.followers_count,
                    description: anne_tw.description,
                    language: anne_tw.lang,
                    avatar: anne_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: anne_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: anne,
                    category: sport
                  )


elise = User.create!( first_name: "Elise",
                    last_name: "Roundtheworldgirl",
                    description: "",
                    email: "elise" + email,
                    avatar: avatar_url,
                    password: pwd
            )
Influencer.create!( pseudo: "#{elise.first_name} #{elise.last_name}",
                    fb_url: "https://www.facebook.com/roundtheworldgirl/",
                    fb_followers: 2023,
                    ig_url: "https://www.instagram.com/roundtheworldgirl/",
                    ig_followers: 320000,
                    tw_username: "",
                    tw_followers: 0,
                    description: "Active living | Wilderness wandering | Photography | | Keen Ambassador ",
                    language: "English",
                    avatar: avatar_url,
                    banner_img: sport_banner,
                    user: elise,
                    category: sport
                  )

yoann = User.create!( first_name: "Yoann",
                    last_name: "Barelli",
                    description: "",
                    email: "yoann" + email,
                    avatar: avatar_url,
                    password: pwd
            )
Influencer.create!( pseudo: "#{yoann.first_name} #{yoann.last_name}",
                    fb_url: "https://www.facebook.com/yoann.barelli.pro/",
                    fb_followers: 69507,
                    ig_url: "https://www.instagram.com/yoannbarelli/",
                    ig_followers: 110000,
                    tw_username: "",
                    tw_followers: 0,
                    description: "PRO MOUNTAIN BIKE ATHLETE !!!
Everything takes another dimension in my life when I start to ride my bike like a mother fu***!",
                    language: "French",
                    avatar: avatar_url,
                    banner_img: sport_banner,
                    user: yoann,
                    category: sport
                  )