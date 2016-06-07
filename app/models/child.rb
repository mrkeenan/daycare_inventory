class Child < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validates :class_id, presence: true

  has_many :families
  has_many :users, through: :families
  
  has_many :items
  belongs_to :classroom

  accepts_nested_attributes_for :items, allow_destroy: true
end
