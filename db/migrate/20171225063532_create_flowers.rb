class CreateFlowers < ActiveRecord::Migration[5.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :type
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
