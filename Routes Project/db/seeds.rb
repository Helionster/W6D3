# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying tables...'
    ArtworkShare.destroy_all
    Artwork.destroy_all
    User.destroy_all

  puts 'Resetting id sequences...'
  %w(users artworks artwork_shares).each do |table_name|
    ApplicationRecord.connection.reset_pk_sequence!(table_name)
  end
user1 = User.create({username: 'jacob'})
user2 = User.create({username: 'jason'})
artworks = Artwork.create([{title: 'Mona Lisa', image_url:'ewfrqwer', artist_id: user1.id}, {title: 'Medicore stick figure', image_url:'still Jacob working. Fun self depricating humor', artist_id: user2.id}])