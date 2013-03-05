class Student < ActiveRecord::Base
  attr_accessible :name

  has_many :student_assessments
  has_many :assessments, :through => :student_assessments
end
