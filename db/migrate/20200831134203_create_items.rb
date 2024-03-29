class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :tipo
      t.integer :price
      t.string :color
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
