class ChangeClassToClassroom < ActiveRecord::Migration
  def change
    rename_table :classes, :classrooms
  end
end
