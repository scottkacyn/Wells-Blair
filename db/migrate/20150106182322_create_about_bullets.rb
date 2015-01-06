class CreateAboutBullets < ActiveRecord::Migration
  def change
    create_table :about_bullets do |t|
      t.string :title
      t.string :subtitle
      t.string :icon

      t.timestamps
    end
  end
end
