class Assessment < ActiveRecord::Base
  attr_accessible :name, :total

  has_many :student_assessments
  has_many :students, :through => :student_assessments
end
