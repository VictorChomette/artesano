class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @services = policy_scope(Service).order(created_at: :desc)

  end

  def show
    @service = Service.find(params[:id])
    authorize @service
    @markers = [{
        lat: @service.latitude,
        lng: @service.longitude
      }]
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    authorize @service
    @service.user = current_user
    @service.address = @service.user.address unless @service.address
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
    authorize @service
  end

  def update
    @service = Service.find(params[:id])
    authorize @service
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def destroy
    @service = Service.find(params[:id])
    authorize @service
    @service.destroy
    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:title, :specialty, :presentation, :address)
  end
end
