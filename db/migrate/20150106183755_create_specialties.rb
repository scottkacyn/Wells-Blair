class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :title
      t.string :icon

      t.timestamps
    end
  end
end
