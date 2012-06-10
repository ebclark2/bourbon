class RemoveDistilleryFromWhiskey < ActiveRecord::Migration
  def up
    remove_column :whiskeys, :distillery
  end

  def down
    add_column :whiskeys, :distillery, :string
  end
end
