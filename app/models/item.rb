class Item < ActiveRecord::Base
  validates :description, presence: true, uniqueness: { scope: :size }
  validates :size, presence: true, uniqueness: { scope: :description }

  validates :total_cnt, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :min_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  validates :min_cnt, allow_nil: true, numericality: { less_than_or_equal_to: :total_cnt }
  validates :current_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  validates :current_cnt, allow_nil: true, numericality: { less_than_or_equal_to: :total_cnt }
  validates :return_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  validates :return_cnt, allow_nil: true, numericality: { less_than_or_equal_to: :total_cnt }
  validates :take_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  validates :take_cnt, allow_nil: true, numericality: { less_than_or_equal_to: :total_cnt }

  belongs_to :child
end
