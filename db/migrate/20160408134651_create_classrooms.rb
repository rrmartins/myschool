class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.belongs_to :student
      t.belongs_to :course
    end
  end
end
