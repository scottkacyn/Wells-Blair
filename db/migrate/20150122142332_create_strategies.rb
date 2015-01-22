class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.string :title
      t.string :description
      t.string :icon

      t.timestamps
    end
  end
end
