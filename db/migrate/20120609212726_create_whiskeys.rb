class CreateWhiskeys < ActiveRecord::Migration
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :distillery
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
