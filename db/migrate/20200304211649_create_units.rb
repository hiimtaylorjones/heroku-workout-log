class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.belongs_to :workout, index: true
      t.belongs_to :movement, index: true

      t.integer :amount
      t.string :descriptor
      t.timestamps
    end
  end
end
