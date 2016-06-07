class ChangeTeacherName < ActiveRecord::Migration
  def change
    rename_column :classrooms, :teacher_name1, :teacher_name_1
    rename_column :classrooms, :teacher_name2, :teacher_name_2
    rename_column :classrooms, :teacher_name3, :teacher_name_3
  end
end
