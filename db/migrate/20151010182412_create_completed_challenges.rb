class CreateCompletedChallenges < ActiveRecord::Migration
  def change
    create_table :completed_challenges do |t|
    	t.references :user
    	t.references :challenge
      t.timestamps
    end
  end
end
