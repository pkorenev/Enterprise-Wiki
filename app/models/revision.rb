class Revision < ActiveRecord::Base
  belongs_to :page
  belongs_to :theme
end
