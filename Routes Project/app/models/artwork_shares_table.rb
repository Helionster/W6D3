class ArtworkSharesTable < ApplicationRecord 
    validates :artwork_id, presence: true, uniqueness: true
    validates :viewer_id, presence: true

    belongs_to :viewer,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :User

    belongs_to :artwork,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkTable
end