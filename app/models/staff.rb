class Staff < ApplicationRecord
  has_many :champagnes, through: :staffs_champagnes
  has_many :staffs_champagnes
end
