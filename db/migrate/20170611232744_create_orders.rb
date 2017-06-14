class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :shipping
      t.decimal :total
      t.integer :order_status
      t.string :name
      t.string :color
      t.string :size
      t.string :user
      t.text :inscription

      t.timestamps
    end
  end
end
