class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string   :product_id
      t.datetime :order_date
      t.float  :total_amount
      t.string :gateway
      t.string :transaction_id
      t.string :name
      t.string :email
      t.string :order_status, :default =>"pending"
      t.string :address
			t.string :state
			t.string :city
			t.string :country
      t.timestamps
    end
  end
end
