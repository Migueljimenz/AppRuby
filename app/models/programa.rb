class Programa < ApplicationRecord
  belongs_to :area
  has_many :curso
end
