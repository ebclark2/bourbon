class AddDistilleryIdToWhiskey < ActiveRecord::Migration
  def change
    add_column :whiskeys, :distillery_id, :int
  end
end
