class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :item_name
      t.integer :stock_quantity
      t.decimal :marked_price

      t.timestamps null: false
    end
  end
end
