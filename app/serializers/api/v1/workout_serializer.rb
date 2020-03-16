class Api::V1::WorkoutSerializer
  include FastJsonapi::ObjectSerializer

  set_type :workout  # optional
  attributes :classification:, :condition, :notes
  
  # has_many :actors
  # belongs_to :owner, record_type: :user
  # belongs_to :movie_type
end
