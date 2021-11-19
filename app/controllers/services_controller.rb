class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params["query"]
      if params["query"]["specialty"] != "Spécialité"
          @services = policy_scope(Service).order(created_at: :desc).where(specialty: params["query"]["specialty"])
      else
          @services = policy_scope(Service).order(created_at: :desc)
      end
    else
      @services = policy_scope(Service).order(created_at: :desc)
    end
    # puts(current_user.address) --> faisait planter lorsqu'on appuie sur search
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
    @markers = [{
      lng: @service.longitude,
      lat: @service.latitude,
      info_window: render_to_string(partial: "info_window", locals: { local: @service }),
      image_url: helpers.asset_url("craftsmen.png")
      },
        {
          lng: current_user.longitude,
          lat: current_user.latitude,
          info_window: render_to_string(partial: "info_window", locals: { local: current_user }),
          image_url: helpers.asset_url("user.png")
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
