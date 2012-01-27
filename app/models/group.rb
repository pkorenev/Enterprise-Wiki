class Group < ActiveRecord::Base
  has_many :pages
  has_many :memberships
end
