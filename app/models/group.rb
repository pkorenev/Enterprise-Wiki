class Group < ActiveRecord::Base
  has_many :pages, :dependent => :restrict, :readonly => true
  has_many :memberships, :dependent => :delete_all
  
  validates :name, :length => { :in => 1..250 }, :uniqueness => true
end
