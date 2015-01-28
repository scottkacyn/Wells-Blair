class AddMarketToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :market, :string
  end
end
