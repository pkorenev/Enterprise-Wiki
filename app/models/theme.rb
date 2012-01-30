class Theme < ActiveRecord::Base
  has_many :revisions, :dependent => :restrict, :readonly => true
  
  validates :name, :length => { :in => 1..250 }, :uniqueness => true
  validates :path, :length => { :in => 1..500 }
end
