class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.string :vendor
    	t.references :user
    	t.float :amount
    	t.string :category
      t.timestamps
    end
  end
end
