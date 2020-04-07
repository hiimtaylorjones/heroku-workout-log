class Api::V1::WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :dash
  set_type :workout  # optional
  attributes :title, :classification, :condition, :notes, :created_at, :updated_at
  
  # has_many :actors
  # belongs_to :owner, record_type: :user
  # belongs_to :movie_type
end
