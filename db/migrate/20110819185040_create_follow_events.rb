class CreateFollowEvents < ActiveRecord::Migration
  def self.up
    create_table :follow_events do |t|
      t.integer :target_id
      t.integer :follower_id
      t.timestamps
    end
  end

  def self.down
    drop_table :follow_events
  end
end
