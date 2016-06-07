class AddTakeReturnColumns < ActiveRecord::Migration
  def change
    add_column :items, :take_cnt, :integer
    add_column :items, :return_cnt, :integer
  end
end
