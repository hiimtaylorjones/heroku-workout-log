class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :classification
      t.string :condition
      t.text :notes
      t.timestamps
    end
  end
end
