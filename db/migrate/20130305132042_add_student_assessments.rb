class AddStudentAssessments < ActiveRecord::Migration
  def change
    create_table :student_assessments do |t|
      t.string  :reason
      t.integer :mark

      t.integer :assessment_id
      t.integer :student_id
    end
  end
end
