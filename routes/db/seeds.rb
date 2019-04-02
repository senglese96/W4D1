# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
a = User.create!(username: 'goghscrewurself')
b = User.create!(username: 'countdemonet')
c = User.create!(username: 'picantepicasso')

Artwork.destroy_all
d = Artwork.create!(title: 'Starry Night', artist_id: a.id, image_url: 'bullshit.com')
e = Artwork.create!(title: 'Impression, Sunrise', artist_id: b.id, image_url: 'prettystuff.com')

ArtworkShare.destroy_all
f = ArtworkShare.create!(viewer_id: a.id, artwork_id: e.id)
g = ArtworkShare.create!(viewer_id: b.id, artwork_id: d.id)