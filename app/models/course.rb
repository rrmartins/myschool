class Course < ActiveRecord::Base

  has_many :classrooms
  has_many :students, :through => :classrooms
  attr_reader :student_tokens
  attr_accessor :ids

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 2}
  validates :description, presence: true, length: {minimum: 5}

  after_save :set_time

  def set_time
    Classroom.destroy_all
    ids = (self.ids.count>1) ? self.ids.uniq : self.ids
    ids.each do |id|
      Classroom.find_or_create_by(student_id: id, course_id: self.id)
    end
  end

end
