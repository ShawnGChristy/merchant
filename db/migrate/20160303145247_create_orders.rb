class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :shipping_name
      t.text :address
      t.string :payment_type

      t.timestamps null: false
    end
  end
end
