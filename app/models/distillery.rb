class Distillery < ActiveRecord::Base
  attr_accessible :name

  has_many :whiskeys

  validates :name, { :presence => :true, :uniqueness => true }

  def to_s
    return self.name
  end

end
