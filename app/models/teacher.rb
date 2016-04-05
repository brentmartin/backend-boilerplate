class Teacher < ActiveRecord::Base
  belongs_to :school
  has_many :students

  validates :name, presence: true
  validates :age, numericality: {
  only_integer: true,
  greater_than: 18
}
end
