class ChangeSubtitleTypeForHeadlines < ActiveRecord::Migration
  def change
  	change_column :headlines, :subtitle, :text
  end
end
