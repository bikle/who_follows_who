class User < ActiveRecord::Base

  # A target event happens when I follow someone.
  has_many :target_events, :class_name => 'FollowEvent', :foreign_key => 'follower_id'
  # A target is someone I follow.
  has_many :targets, :through => :target_events

  # A follow event happens when someone follows me.
  has_many :follower_events, :class_name => 'FollowEvent', :foreign_key => 'target_id'
  # A follower is someone who follows me.
  has_many :followers, :through => :follower_events

  # A non_target is someone I don't follow.
  def non_targets
    User.all - [self] - self.targets
  end

end
