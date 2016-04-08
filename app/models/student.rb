class Student < ActiveRecord::Base
  has_many :classrooms
  has_many :courses, :through => :classrooms

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 10}
  validates :register_number, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 5}

end
