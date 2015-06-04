class CreateOrderlines < ActiveRecord::Migration
  def change
    create_table :orderlines do |t|
      t.belongs_to :order, index: true
      t.belongs_to :item, index: true
      t.integer :quantity
      t.decimal :total_price

      t.timestamps null: false
    end
  end
end
