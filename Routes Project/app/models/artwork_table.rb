class ArtworkTable < ApplicationRecord
    validates :title, null: false
    validates :image_url, null: false
    validates :artist_id, null: false
    validates :artist_id, uniqueness: { scope: :title}

    belongs_to :artist
    primary_key: :id
    foreign_key: :artist_id
    class_name: :User
end