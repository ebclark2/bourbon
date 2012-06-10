class Whiskey < ActiveRecord::Base
  attr_accessible :category, :description, :distillery, :name

  belongs_to :distillery

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
