class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.string :title
      t.string :subtitle
      t.string :page

      t.timestamps
    end
  end
end
