class RemoveCategoryFromWhiskey < ActiveRecord::Migration
  def up
    remove_column :whiskeys, :category
  end

  def down
  end
end
