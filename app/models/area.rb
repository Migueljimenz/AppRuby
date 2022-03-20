class Area < ApplicationRecord
    validates :nombreArea, uniqueness: true
    has_many :programas
end
