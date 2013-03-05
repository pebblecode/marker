class StudentAssessment < ActiveRecord::Base
  attr_accessible :mark, :reason

  belongs_to :assessment
  belongs_to :student
end