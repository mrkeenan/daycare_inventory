class Family < ActiveRecord::Base
  validates :user_id, presence: true, uniqueness: { scope: :child_id }
  validates :child_id, presence: true, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :child
end
