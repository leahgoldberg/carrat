class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
    	t.boolean :active, default:false
    	t.string :vendor
      t.string :category
    	t.integer :spend_amount
    	t.string :time_frame
    	t.integer :points_multiplier
    	t.string :description
      t.timestamps
    end
  end
end
