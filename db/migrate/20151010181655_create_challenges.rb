class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
    	t.boolean :active, default:false
    	t.references :vendor
    	t.string :name
    	t.string :description
      t.timestamps
    end
  end
end
