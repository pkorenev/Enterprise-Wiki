class Page < ActiveRecord::Base
  belongs_to :group
  has_many :revisions
  has_one :hyperlink
  
  validates :path, :length => { :in => 0..2000 }, :uniqueness => { :case_sensitive => false }
  validates :owner_name, :length => { :in => 1..250 }
  validates :group_id, :presence => true
  validates :permission, :numericality => { :only_integer => true }
  validates :type, :inclusion => { :in => [0, 1, 2] }
end
