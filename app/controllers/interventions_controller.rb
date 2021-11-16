class InterventionsController < ApplicationController

  def new
  end

  def create
    @service = Service.find(params[:service_id])
    @intervention = Intervention.new(params)
    @intervention.service = @service
  end

  def edit
  end

  def update
  end

  def index
  end

end
