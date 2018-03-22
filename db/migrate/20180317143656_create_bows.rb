class CreateBows < ActiveRecord::Migration[5.1]
  def change
    create_table :bows do |t|
      t.string :make
      t.string :model
      t.string :serial_number
      t.string :description
      t.integer :bow_type

      t.timestamps
    end
  end
end
