class Page < ActiveRecord::Base
  belongs_to :group
  has_many :revisions
  has_one :hyperlink
end
