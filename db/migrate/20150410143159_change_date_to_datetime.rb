class ChangeDateToDatetime < ActiveRecord::Migration
  def change
    change_column :concerts, :date, :datetime
  end
end
