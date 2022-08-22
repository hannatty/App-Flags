class Region < ApplicationRecord
    has_many :flags
    validates :acronym, presence: true, length: { is: 2 }
    validates :region_name, presence: true
end
