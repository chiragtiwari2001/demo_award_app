class Nomination < ApplicationRecord
  belongs_to :user, optional: true
  
  validates :organization_name, :nominee_name, :nominee_age, :contact_number, :email, presence: true
  
  before_create :set_user_email
  
  private
  
  def set_user_email
    self.user_email = user.email if user && user.email.present?
  end
end
