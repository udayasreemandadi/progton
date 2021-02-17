class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :name
      t.string :barcode
      t.boolean :scanned_items, default: false

      t.timestamps
    end
  end
end
