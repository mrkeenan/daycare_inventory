class Item < ActiveRecord::Base
  validates :description, presence: true, uniqeuness: { scope: :size }
  validates :size, presence: true, uniqueness: { scope: :description }
  validates :total_cnt, presence: true
  
  belongs_to :child
end
