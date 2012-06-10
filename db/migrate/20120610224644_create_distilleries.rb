class CreateDistilleries < ActiveRecord::Migration
  def change
    create_table :distilleries do |t|
      t.string :name

      t.timestamps
    end
  end
end
