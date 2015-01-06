class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :title
      t.text :bio
      t.string :linkedin
      t.string :photo

      t.timestamps
    end
  end
end
