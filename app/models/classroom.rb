class Classroom < ActiveRecord::Base
  validates :room, presence: true, uniqueness: true
  validates :teacher_name1, presence: true, uniqueness: { scope: :room }

  has_many :children
end
