ActiveAdmin.register Nomination do
  permit_params :organization_name, :nominee_name, :nominee_age, :contact_number,
                :email, :correspondence_address, :firm_type, :user_id, :user_email, :firm_type_other

  form do |f|
    f.semantic_errors

    f.inputs "Nomination Details" do
      f.input :user_id, as: :select, collection: User.all.pluck(:email, :id)
      f.input :organization_name
      f.input :nominee_name
      f.input :nominee_age
      f.input :contact_number
      f.input :email
      f.input :correspondence_address

      f.input :firm_type, as: :radio, collection: [
        'Architecture Firm / Company',
        'Interior Design Firm / Company',
        'Architecture & Interior Design Firm / Company',
        'Interior Design Institutes',
        'Architecture Schools / Colleges',
        'Brands Serving in Interior & Architecture Products / Services',
        'Freelance Interior Designer / Architect',
        'Other'
      ], input_html: { id: 'firm_type_radios' }
    end

    f.actions
  end
end
