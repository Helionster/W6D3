# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :bigint           not null
#
class Artwork < ApplicationRecord
    # validates :title, null: false
    # validates :image_url, null: false
    # validates :artist_id, null: false
    # validates :artist_id, uniqueness: { scope: :title}
end
