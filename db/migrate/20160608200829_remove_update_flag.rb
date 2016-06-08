class RemoveUpdateFlag < ActiveRecord::Migration
  def change
    remove_column :items, :update_flag, :integer
  end
end
