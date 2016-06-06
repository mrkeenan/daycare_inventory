class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :room
      t.string :teacher_name1
      t.string :teacher_name2
      t.string :teacher_name3

      t.timestamps

    end
  end
end
