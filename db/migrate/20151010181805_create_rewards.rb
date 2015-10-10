class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
    	t.integer :point_cost
    	t.string :vendor
    	t.string :title
      t.timestamps
    end
  end
end
