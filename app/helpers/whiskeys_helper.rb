module WhiskeysHelper

  def setup_whiskey(whiskey)
    if whiskey.distillery == nil
      whiskey.build_distillery
    end
    if whiskey.category == nil
      whiskey.build_category
    end
    return whiskey
  end

  def get_distilleries_to_id_hash
    distilleries = Distillery.find(:all, :order => :name)
    dists_to_id = Hash.new
    distilleries.each do |dist|
       dists_to_id[dist] = dist.id
    end
    return dists_to_id
  end

end
