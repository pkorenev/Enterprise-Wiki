class Hyperlink < ActiveRecord::Base
  belongs_to :page
  
  validates :page_id, :presence => true, :uniqueness => true
  validates :url, :length => { :in => 10..2000 }
end
