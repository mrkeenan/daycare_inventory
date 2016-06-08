class AddUpdateFlag < ActiveRecord::Migration
  def change
    add_column :items, :update_flag, :integer
  end
end
