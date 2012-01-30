class Hyperlink < ActiveRecord::Base
  belongs_to :page
  
  validates :page_id, :uniqueness => true
  validates :url, :length => { :in => 10..2000 }
end
