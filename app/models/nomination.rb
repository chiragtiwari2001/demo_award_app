class Nomination < ApplicationRecord
  belongs_to :user, optional: true

  validates :organization_name, :nominee_name, :nominee_age, :contact_number, :email, presence: true

  before_create :set_user_email

  private

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["contact_number", "correspondence_address", "created_at", "email", "firm_type", "id", "id_value", "nominee_age", "nominee_name", "organization_name", "updated_at", "user_email", "user_id"]
  end

  def set_user_email
    self.user_email = user.email if user && user.email.present?
  end
end
