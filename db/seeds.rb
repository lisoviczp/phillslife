# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ActiveRecord::Base.transaction do  #if at any point it fails, don't add anything

#strangers
  s1 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/106186251&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: 'essential'
)
#touchthesky
  s2 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/75299379&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#neon
  s3 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/93687454&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#insane
  s4 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/66816170&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#crushed
  s5 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/157281888&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#kingalone
  s6 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/44169260&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#tinyanthem
  s7 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/79947823&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#continuum
  s8 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/80117439&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#heiressofvalentina
  s9 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/123254609&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#ocean
  s10 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/54131647&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#sointoyou
  s11 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/106696591&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#hurricane
  s12 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/90787841&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#flicker
  s13 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/160632928&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
#dontwannabeyourgirl
  s14 = Song.create(
    url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/134802174&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )
  #sadmachine
  s15 = Song.create(
  	url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/149151252&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    status: "essential"
  )

end

