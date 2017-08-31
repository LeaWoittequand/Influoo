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
                    ig_url: "https://www.instagram.com/p/BYaWykxlQfO/?taken-by=collagevintage",
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
                    ig_url: "https://www.instagram.com/p/BYbIPzDAwJF/?taken-by=zoella",
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

christene_tw = client.user("@CRBarberich")
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
                    ig_url: "https://www.instagram.com/p/BYay125hnEo/?taken-by=christenebarberich",
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
                    ig_url: "https://www.instagram.com/p/BYYtJZ1n4k_/?taken-by=devynistyles",
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
                    ig_url: "https://www.instagram.com/p/BYbSpFUDKbE/?taken-by=chiaraferragni",
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
                    ig_url: "https://www.instagram.com/p/BYbh6WODrAG/?taken-by=marianodivaio",
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
                    ig_url: "https://www.instagram.com/p/BXmSpPdlmdN/?taken-by=amyporterfield",
                    ig_followers: 51969,
                    tw_username: amy_tw.screen_name,
                    tw_followers: amy_tw.followers_count,
                    description: amy_tw.description,
                    language: amy_tw.lang,
                    avatar: amy_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: amy_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: amy,
                    category: new_tech
                  )
# melanie_tw = client.user("@MelanieDuncan7")
# melanie = User.create!( first_name: "Melanie",
#               last_name: "Duncan",
#               description: "",
#               email: "melanie" + email,
#               avatar: melanie_tw.profile_image_url.to_s.gsub('_normal', ''),
#               password: pwd
#             )
# Influencer.create!( pseudo: "#{melanie.first_name} #{melanie.last_name}",
#                     fb_url: "https://www.facebook.com/pg/EntrepreneuressAcademy",
#                     fb_followers: 243298,
#                     ig_url: "",
#                     ig_followers: 0,
#                     tw_username: melanie_tw.screen_name,
#                     tw_followers: melanie_tw.followers_count,
#                     description: melanie_tw.description,
#                     language: melanie_tw.lang,
#                     avatar: melanie_tw.profile_image_url.to_s.gsub('_normal', ''),
#                     banner_img: melanie_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
#                     user: melanie,
#                     category: new_tech
#                   )
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
                    ig_url: "https://www.instagram.com/p/BYSBOAtANtt/?taken-by=jonathoncolman",
                    ig_followers: 1962,
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
                    ig_url: "https://www.instagram.com/p/BYaLZmRnsIN/?taken-by=annedubndidu",
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

sissy_tw = client.user("@SissyMUA")
sissy = User.create!( first_name: "Sissy",
                    last_name: "Mua",
                    description: "",
                    email: "sissy" + email,
                    avatar: sissy_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{sissy.first_name} #{sissy.last_name}",
                    fb_url: "https://www.facebook.com/sissymuafanpage/",
                    fb_followers: 111684,
                    ig_url: "https://www.instagram.com/p/BYbcAlolC_2/?taken-by=sissymua",
                    ig_followers: 603491,
                    tw_username: sissy_tw.screen_name,
                    tw_followers: sissy_tw.followers_count,
                    description: sissy_tw.description,
                    language: sissy_tw.lang,
                    avatar: sissy_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: sissy_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: sissy,
                    category: sport
                  )



kilian_tw = client.user("@kilianj")
kilian = User.create!( first_name: "kilian",
                    last_name: "Jornet",
                    description: "",
                    email: "kilian" + email,
                    avatar: kilian_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{kilian.first_name} #{kilian.last_name}",
                    fb_url: "https://www.facebook.com/kilianjornet/",
                    fb_followers: 749780,
                    ig_url: "https://www.instagram.com/p/BYVNpK9gfr0/?taken-by=kilianjornet",
                    ig_followers: 444523,
                    tw_username: kilian_tw.screen_name,
                    tw_followers: kilian_tw.followers_count,
                    description: kilian_tw.description,
                    language: kilian_tw.lang,
                    avatar: kilian_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: kilian_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: kilian,
                    category: sport
                  )

greg_tw = client.user("@Greg_Runner")
greg = User.create!( first_name: "greg",
                    last_name: "Runner",
                    description: "",
                    email: "greg" + email,
                    avatar: greg_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{greg.first_name} #{greg.last_name}",
                    fb_url: "https://www.facebook.com/greg.lerunner",
                    fb_followers: 749780,
                    ig_url: "https://www.instagram.com/p/BYbImRzhyOT/?taken-by=greg_runner",
                    ig_followers: 444523,
                    tw_username: greg_tw.screen_name,
                    tw_followers: greg_tw.followers_count,
                    description: greg_tw.description,
                    language: greg_tw.lang,
                    avatar: greg_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: greg_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: greg,
                    category: sport
                  )


georgia_tw = client.user("@GeorgiaSecrets")
georgia = User.create!( first_name: "georgia",
                    last_name: "Secret",
                    description: "",
                    email: "georgia" + email,
                    avatar: georgia_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{georgia.first_name} #{georgia.last_name}",
                    fb_url: "https://www.facebook.com/georgiasecrets/",
                    fb_followers: 88825,
                    ig_url: "https://www.instagram.com/p/BYbJoHQFsgC/?taken-by=georgiasecretsyt",
                    ig_followers: 294251,
                    tw_username: georgia_tw.screen_name,
                    tw_followers: georgia_tw.followers_count,
                    description: georgia_tw.description,
                    language: georgia_tw.lang,
                    avatar: georgia_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: georgia_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: georgia,
                    category: sport
                  )


kurnaz_tw = client.user("@FromHumanToGod")
kurnaz = User.create!( first_name: "Monsieur",
                    last_name: "Kurnaz",
                    description: "",
                    email: "kurnaz" + email,
                    avatar: kurnaz_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{kurnaz.first_name} #{kurnaz.last_name}",
                    fb_url: "https://www.facebook.com/HumanAndGod/",
                    fb_followers: 102052,
                    ig_url: "https://www.instagram.com/p/BYYi69YADEy/?taken-by=fromhumantogod",
                    ig_followers: 147519,
                    tw_username: kurnaz_tw.screen_name,
                    tw_followers: kurnaz_tw.followers_count,
                    description: kurnaz_tw.description,
                    language: kurnaz_tw.lang,
                    avatar: kurnaz_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: kurnaz_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: kurnaz,
                    category: sport
                  )

tibo_tw = client.user("@TiboInShape")
tibo = User.create!( first_name: "Tibo",
                    last_name: "Inshape",
                    description: "",
                    email: "tibo" + email,
                    avatar: tibo_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{tibo.first_name} #{tibo.last_name}",
                    fb_url: "https://www.facebook.com/tiboinshape/",
                    fb_followers: 1062958,
                    ig_url: "https://www.instagram.com/p/BYYwU_lFDhu/?taken-by=tiboinshape",
                    ig_followers: 1699728,
                    tw_username: tibo_tw.screen_name,
                    tw_followers: tibo_tw.followers_count,
                    description: tibo_tw.description,
                    language: tibo_tw.lang,
                    avatar: tibo_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: tibo_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: tibo,
                    category: sport
                  )

noholita_tw = client.user("@noholita")
noholita = User.create!( first_name: "Camille",
                    last_name: "Callen",
                    description: "",
                    email: "noholita" + email,
                    avatar: noholita_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{noholita.first_name} #{noholita.last_name}",
                    fb_url: "https://www.facebook.com/noholita/",
                    fb_followers: 71302,
                    ig_url: "https://www.instagram.com/p/BYblQhPBYgJ/?taken-by=noholita",
                    ig_followers: 721551,
                    tw_username: noholita_tw.screen_name,
                    tw_followers: noholita_tw.followers_count,
                    description: noholita_tw.description,
                    language: noholita_tw.lang,
                    avatar: noholita_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: noholita_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: noholita,
                    category: sport
                  )

seb_tw = client.user("@Sebzanella")
seb = User.create!( first_name: "Seb",
                    last_name: "Zanella",
                    description: "",
                    email: "seb" + email,
                    avatar: seb_tw.profile_image_url.to_s.gsub('_normal', ''),
                    password: pwd
            )
Influencer.create!( pseudo: "#{seb.first_name} #{seb.last_name}",
                    fb_url: "https://www.facebook.com/pg/sebzanella/",
                    fb_followers: 0,
                    ig_url: "https://www.instagram.com/p/BYbUBa-B9bn/?taken-by=sebzanella",
                    ig_followers: 95577,
                    tw_username: seb_tw.screen_name,
                    tw_followers: seb_tw.followers_count,
                    description: seb_tw.description,
                    language: seb_tw.lang,
                    avatar: seb_tw.profile_image_url.to_s.gsub('_normal', ''),
                    banner_img: seb_tw.profile_banner_url.to_s.gsub('web', '') + "1500x500",
                    user: seb,
                    category: sport
                  )


