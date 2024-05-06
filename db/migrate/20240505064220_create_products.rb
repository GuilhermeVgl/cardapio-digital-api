class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.float :price, null: false
      t.integer :amountPeople, null: false
      t.text :images, null: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
