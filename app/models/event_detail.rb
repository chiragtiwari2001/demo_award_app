class EventDetail < ApplicationRecord
  validates :event_date, :venue, :nomination_deadline, presence: true

  private

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "event_date", "id", "id_value", "nomination_deadline", "updated_at", "venue"]
  end
end
