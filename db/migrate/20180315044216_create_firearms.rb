class CreateFirearms < ActiveRecord::Migration[5.1]
  def change
    create_table :firearms do |t|
      t.string :make
      t.string :model
      t.integer :cartridge
      t.integer :classification
      t.integer :action
      t.string :serial_number

      t.timestamps
    end
  end
end
