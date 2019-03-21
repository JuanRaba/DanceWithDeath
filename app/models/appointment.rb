class Appointment < ApplicationRecord
  validates :date, presence: { message: "must be given please" }
  validates :starttime, presence: { message: "must be given please" }
  validates :contact, presence: { message: "must be given please" }
  validates :starttime, uniqueness: { scope: [:date]}  
  validates :starttime, :inclusion => 9..18 
  validate :date_in_the_week
  validate :date_cannot_be_in_the_past
  
  # set to email_field if want only email contact 
  #  validates_format_of :contact,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end    
  def date_in_the_week
    if date.on_weekend?
      errors.add(:date, "cant be in weekend")
    end
  end   
end
