class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    validates :title, presence: true
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true

    validates :artwork_id, presence: true, uniqueness: true
    validates :viewer_id, presence: true
    
    validates :title, uniqueness: { scope: :artist_id}
end