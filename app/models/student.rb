class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :teacher

  validates :name, presence: true
  validates :age, numericality: {
  only_integer: true,
  greater_than: 16
}
end
