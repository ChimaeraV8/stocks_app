class Map < ApplicationRecord
  belongs_to :topic
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
