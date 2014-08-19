class Student < ActiveRecord::Base
  has_many :applications

  def self.applications_count
    applications_count = self.applications.count
  end
end
