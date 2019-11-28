class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :item_id
      t.integer :cart_id
      t.integer :order_id
      t.belongs_to :cart, index: true

      t.timestamps
    end
  end
end
