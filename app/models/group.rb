class Group < ActiveRecord::Base
  has_many :pages       # XXX what if a group is removed and the page permission goes wrong?
  has_many :memberships, :dependent => :delete_all
  
  validates :name, :length => { :in => 1..250 }, :uniqueness => true
end
