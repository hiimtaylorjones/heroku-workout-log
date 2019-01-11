class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      
      t.belongs_to :workout, index: true

      t.string :name
      t.string :description
      t.string :amount
      t.integer :weight
      t.text :notes
      
      t.timestamps
    end
  end
end
