class NominationsController < ApplicationController
  def new
    @nomination = Nomination.new
  end

  def create
    @nomination = Nomination.new(nomination_params)

    if params[:nomination][:firm_type] == "Other" && params[:firm_type_other].present?
      @nomination.firm_type = params[:firm_type_other]
    end

    @nomination.user = current_user if defined?(current_user) && current_user

    @nomination.user_email = current_user.email if defined?(current_user) && current_user

    if @nomination.save
      redirect_to root_path, notice: 'Your nomination has been submitted successfully!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def nomination_params
    params.require(:nomination).permit(
      :organization_name, 
      :nominee_name, 
      :nominee_age, 
      :contact_number, 
      :email,
      :correspondence_address,
      :firm_type
    )
  end
end