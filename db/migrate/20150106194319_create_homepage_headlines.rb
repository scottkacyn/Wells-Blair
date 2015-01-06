class CreateHomepageHeadlines < ActiveRecord::Migration
  def change
    create_table :homepage_headlines do |t|
      t.string :line1
      t.string :line2
      t.string :line3

      t.timestamps
    end
  end
end
