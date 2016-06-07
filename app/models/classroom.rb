class Classroom < ActiveRecord::Base
  validates :room, presence: true, uniqueness: true
  validates :teacher_name_1, presence: true, uniqueness: { scope: :room }

  has_many :children, :class_name => "Child", :foreign_key => 
end
