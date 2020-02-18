class User < ApplicationRecord
  has_many :events, foreign_key: 'admin_id', class_name: 'Event'
  has_many :attendances
  has_many :events, through: :attendances
  
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
