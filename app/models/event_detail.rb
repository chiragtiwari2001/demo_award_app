class EventDetail < ApplicationRecord
  validates :event_date, :venue, :nomination_deadline, presence: true
end
