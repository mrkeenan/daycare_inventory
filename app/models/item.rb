class Item < ActiveRecord::Base
  validates :description, presence: true, uniqueness: { scope: :size }
  validates :size, presence: true, uniqueness: { scope: :description }
  validates :total_cnt, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :min_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }

  validates :current_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }

  validates :return_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  validates :take_cnt, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }

  validates :weather_type, allow_nil: true, uniqueness: { scope: :description }

  belongs_to :child
end
