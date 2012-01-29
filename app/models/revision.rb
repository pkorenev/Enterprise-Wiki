class Revision < ActiveRecord::Base
  belongs_to :page
  belongs_to :theme
  
  validates :page_id, :presence => true
  validates :title, :length => { :in => 1..250 }
  validates :body, :length => { :in => 0..50000 }
  validates :markup_name, :inclusion => { :in => %w(Markdown MediaWiki) }
  validates :theme_id, :presence => true
  validates :is_minor_edit, :inclusion => { :in => [true, false] }
  validates :editor_name, :length => { :in => 1..250 }
  validates :commit_message, :length => { :in => 0..1000 }
end
