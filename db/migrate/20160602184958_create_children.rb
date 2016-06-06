class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :class_id
      t.date :dob
      t.string :last_name
      t.string :first_name

      t.timestamps

    end
  end
end
