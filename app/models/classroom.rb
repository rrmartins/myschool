class Classroom < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  before_create :set_entry_at
  def set_entry_at
    self.entry_at = Time.now
  end
end
