class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :name
      t.integer :total

      t.timestamps
    end
  end
end
