module WhiskeysHelper

  def setup_whiskey(whiskey)
    if whiskey.distillery == nil
      whiskey.build_distillery
    end
    return whiskey
  end

end
