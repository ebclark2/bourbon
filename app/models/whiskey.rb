class Whiskey < ActiveRecord::Base
  belongs_to :distillery
  belongs_to :category

  accepts_nested_attributes_for :distillery, { 
  #  :allow_destroy => true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  }
  accepts_nested_attributes_for :category, { 
  #  :allow_destroy => true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  }

  attr_accessible :description, :distillery, :distillery_id, :name, :distillery_attributes, :category, :category_attributes

  validates :description, :presence =>true
  validates :name, :presence =>true

end
