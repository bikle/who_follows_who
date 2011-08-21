class User < ActiveRecord::Base
  has_many :target_events, :class_name => 'FollowEvent', :foreign_key => 'follower_id'
  has_many :targets, :through => :target_events

  has_many :follower_events, :class_name => 'FollowEvent', :foreign_key => 'target_id'
  has_many :followers, :through => :follower_events

end
