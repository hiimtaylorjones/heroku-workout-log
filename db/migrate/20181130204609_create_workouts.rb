class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :condition
      t.string :time
      t.integer :max_weight
      t.integer :rounds
      t.integer :reps
      t.text :description
      t.text :notes
      t.timestamps
    end
  end
end
