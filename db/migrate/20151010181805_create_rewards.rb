class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
    	t.boolean :active, default: true
    	t.integer :point_cost
    	t.references :vendor
    	t.string :title
    	t.string :short_title
    	t.text :description
    	t.float :discount_amount
    	t.float :discount_percentage
    	t.string :expires_at
    	t.text :fine_print
    	t.string :image_url
    	t.float :price
    	t.string :untracked_url
    	t.float :value
      t.timestamps
    end
  end
end






