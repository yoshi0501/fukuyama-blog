class AddNameToDailyreports < ActiveRecord::Migration[5.0]
  def change
    add_column :dailyreports, :name, :string
  end
end
