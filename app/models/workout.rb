class Workout < ApplicationRecord
    has_many :movements

    validates :name, presence: true
    validate :proper_condition

    def proper_condition
        sanitized = condition.downcase
        return ["for time", "max weight"].include?(sanitized)
    end
end
