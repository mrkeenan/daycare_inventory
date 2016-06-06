class Child < ActiveRecord::Base
  validates :firstname, presence: true, uniqueness: { scope: [:lastname, :dob]  }
  validates :lastname, presence: true, uniqueness: { scope: [:firstname, :dob]  }
  validates :dob, presence: true, uniqueness: { scope: [:firstname, :lastname] }
  validates :class_id, presence: true


  has_many :users, through: :families
  has_many :items
  belongs_to :class

  accepts_nested_atributes_for :items, allow_destroy: true
end
