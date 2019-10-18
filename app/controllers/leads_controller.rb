class LeadsController < ApplicationController

  # GET: leads
  def index
    @leads = Lead.all
    render json: @leads
  end

  # POST: /leads
  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      render json: @lead, status: :created, location: @lead
    else
      render json: @lead.errors, status: :unprocessable_entity
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :email)
  end

end
