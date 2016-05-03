class AddStudentIdToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :student_id, :integer
  end
end
