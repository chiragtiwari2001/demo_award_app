ActiveAdmin.register EventDetail do
  permit_params :event_date, :venue, :nomination_deadline

  # Optional: Customize form if needed
  form do |f|
    f.inputs do
      f.input :event_date
      f.input :venue
      f.input :nomination_deadline
    end
    f.actions
  end
end
