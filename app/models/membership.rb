class Membership < ActiveRecord::Base
  belongs_to :group
  
  validates :group_id, :presence => true
  validates :user_name, :length => { :in => 1..250 }, :uniqueness => { :scope => :group_id }
end
