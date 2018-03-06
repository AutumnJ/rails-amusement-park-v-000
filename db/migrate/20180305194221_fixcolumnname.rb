class Fixcolumnname < ActiveRecord::Migration
  def change
    rename_column :users, :heights, :height
  end
end
