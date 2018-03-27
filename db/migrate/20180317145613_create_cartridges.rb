class CreateCartridges < ActiveRecord::Migration[5.1]
  def change
    create_table :cartridges, {:id => false} do |t|
      t.primary_key :id
      t.string :caliber
      t.string :description

      t.timestamps
    end
  end
end
