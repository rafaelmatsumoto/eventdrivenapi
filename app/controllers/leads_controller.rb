# frozen_string_literal: true

class LeadsController < ApplicationController
  before_action :get_publisher, only: [:create]
  # GET: leads
  def index
    @leads = Lead.all
    render json: @leads
  end

  # POST: /leads
  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      @publisher.publish('lead-topic', @lead)
      render json: @lead, status: :created, location: @lead
    else
      render json: @lead.errors, status: :unprocessable_entity
    end
  end

  private

  def get_publisher
    @publisher = Publisher.new
  end

  def lead_params
    params.require(:lead).permit(:name, :email, :annual_earnings)
  end
end
