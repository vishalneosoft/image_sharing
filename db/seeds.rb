# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name: 'Test', email: 'test@test.com', password: '123456', password_confirmation: '123456')
album = Album.create(name: 'First Album', owner_id: user.id)
photo = Photo.create([{tagline: 'Photo 1', owner_id: user.id, album_id: album.id, image: File.new("app/assets/images/missing.png")}, {tagline: 'Photo 2', owner_id: user.id, album_id: album.id, image: File.new("app/assets/images/missing.png")}, {tagline: 'Photo 3', owner_id: user.id, album_id: album.id, image: File.new("app/assets/images/missing.png")}, {tagline: 'Photo 4', owner_id: user.id, album_id: album.id, image: File.new("app/assets/images/missing.png")}, {tagline: 'Photo 5', owner_id: user.id, album_id: album.id, image: File.new("app/assets/images/missing.png")}, {tagline: 'Photo 6', owner_id: user.id, album_id: album.id, image: File.new("app/assets/images/missing.png")}])