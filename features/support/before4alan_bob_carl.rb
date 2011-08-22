#
# before4alan_bob_carl.rb
#

Before('@alan_bob_carl') do
  User.create :name => "Alan"
  User.create :name => "Bob"
  User.create :name => "Carl"
end
