class AddPositionToStrategies < ActiveRecord::Migration
  def change
    add_column :strategies, :position, :integer
  end
end
