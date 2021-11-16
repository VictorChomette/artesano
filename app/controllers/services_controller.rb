class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:title, :specialty, :description)
  end
end
