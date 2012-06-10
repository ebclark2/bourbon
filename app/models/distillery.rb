class Distillery < ActiveRecord::Base
  attr_accessible :name

  has_many :whiskeys

  validates :name, :presence => :true
end