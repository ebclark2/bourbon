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

end
