class Attendance < ApplicationRecord

  #after_create :attendance_email

  belongs_to :participant, class_name: "User"
  belongs_to :event

  #def attendance_email
  #  AttendanceMailer.attendant_email(self).deliver_now
  #end
end
