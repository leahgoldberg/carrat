class CreateClaimedRewards < ActiveRecord::Migration
  def change
    create_table :claimed_rewards do |t|
    	t.references :reward 
    	t.references :user
      t.timestamps
    end
  end
end
