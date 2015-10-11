class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :user
      t.string :content
      t.string :notified_day
      t.timestamps null: false
    end
  end
end
