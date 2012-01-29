class Group < ActiveRecord::Base
  has_many :pages
  has_many :memberships
  
  validates :name, :length => { :in => 1..250 }, :uniqueness => true
end
