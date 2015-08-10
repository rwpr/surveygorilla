class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :answers

  validates :name, uniqueness: true
end
