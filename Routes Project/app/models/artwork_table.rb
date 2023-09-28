class ArtworkTable < ApplicationRecord
    validates :title, null: false
    validates :image_url, null: false
    validates :artist_id, null: false
    validates :artist_id, uniqueness: { scope: :title}
end