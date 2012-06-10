class AddCategoryIdColumnToWhiskeys < ActiveRecord::Migration
  def change
    add_column :whiskeys, :category_id, :int
  end
end
