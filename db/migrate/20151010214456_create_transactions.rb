class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.date :purchase_date
    	t.string :vendor
    	t.float :amount
    	t.string :category
      t.timestamps
    end
  end
end
