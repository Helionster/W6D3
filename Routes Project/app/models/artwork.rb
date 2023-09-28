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
    validates :title, null: false
    validates :image_url, null: false
    validates :artist_id, null: false
    validates :artist_id, uniqueness: { scope: :title}

    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artist
    
    has_many :artwork_shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    
end
