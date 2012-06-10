module DistilleriesHelper

  def ensure_unique_distillery(distillery)
    existing_dist = Distillery.find(distillery.id)
    if existing_dist != nil 
      return existing_dist
    end
    return distillery
  end

end
