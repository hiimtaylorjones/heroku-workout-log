class Workout < ApplicationRecord
    has_many :units

    validates :classification, :condition, presence: true

end
