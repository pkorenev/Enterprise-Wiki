class Page < ActiveRecord::Base
  NORMAL = 0
  LINK = 1
  FILE = 2
  
  belongs_to :group
  has_many :revisions, :dependent => :delete_all, :readonly => true
  has_one :hyperlink, :dependent => :delete
  
  validates :path, :length => { :in => 0..2000 }, :uniqueness => { :case_sensitive => false }
  validates :owner_name, :length => { :in => 1..250 }
  validates :group_id, :presence => true
  validates :permission, :numericality => { :only_integer => true }
  validates :type, :inclusion => { :in => [NORMAL, LINK, FILE] }
  
  accepts_nested_attributes_for :hyperlink
  attr_accessible :path, :type, :hyperlink_attributes
  
  def is_normal?
    type == NORMAL
  end
  
  def is_link?
    type == LINK
  end
  
  def is_file?
    type == FILE
  end
end
