class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
    	t.boolean :active, default: true
    	t.integer :point_cost
    	t.references :vendor
    	t.string :title
      t.timestamps
    end
  end
end
