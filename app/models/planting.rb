class Planting < ApplicationRecord
  belongs_to :garden
  belongs_to :plant
end
