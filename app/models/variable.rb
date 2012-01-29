class Variable < ActiveRecord::Base
  validates :name, :length => { :in => 1..250 }
  validates :value, :length => { :in => 0..50000 }
end
