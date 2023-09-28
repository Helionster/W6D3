class ArtworkSharesTable < ApplicationRecord 
    validates :artwork_id, presence: true, uniqueness: true
    validates :viewer_id, presence: true
end