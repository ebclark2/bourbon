class Whiskey < ActiveRecord::Base
  belongs_to :distillery

  accepts_nested_attributes_for :distillery, { 
  #  :allow_destroy => true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  }
  attr_accessible :category, :description, :distillery, :name, :distillery_attributes

  validates :category, :presence => true
  validates :description, :presence =>true
  validates :name, :presence =>true


  def distillery_name
    if self.distillery != nil
      return self.distillery.name
    end
    return nil
  end
 
end
