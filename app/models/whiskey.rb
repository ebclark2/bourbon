class Whiskey < ActiveRecord::Base
  attr_accessible :category, :description, :distillery, :name

  validates :category, :presence => true
  validates :description, :presence =>true
  validates :distillery, :presence =>true
  validates :name, :presence =>true
end
