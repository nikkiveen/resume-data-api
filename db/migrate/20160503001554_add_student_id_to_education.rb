class AddStudentIdToEducation < ActiveRecord::Migration
  def change
    add_column :educations, :student_id, :integer
  end
end
