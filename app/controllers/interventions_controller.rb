class InterventionsController < ApplicationController

  def index
    @interventions = policy_scope(Intervention).order(created_at: :desc).where(user_id: current_user.id)
  end

  def show
    @intervention = Intervention.find(params[:id])
    authorize @intervention
    @markers = [{
        lng: @intervention.service.longitude,
        lat: @intervention.service.latitude,
        info_window: render_to_string(partial: "info_window", locals: { local: @intervention.service }),
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
    @service = Service.find(params[:id])
    @intervention = Intervention.new
    authorize @intervention
  end

  def create
    @service = Service.find(params[:id])
    @intervention = Intervention.new(interventions_params)
    authorize @intervention
    @intervention.service = @service
    @intervention.user = current_user
    if @intervention.save
      redirect_to intervention_path(@intervention)
    else
      render :new
    end
  end

  def edit
    @intervention = Intervention.find(params[:id])
    authorize @intervention
  end

  def update
    @intervention = Intervention.find(params[:id])
    authorize @intervention
    @intervention.update(intervention_params)
  end


  private

  def interventions_params
    params.require(:intervention).permit(:date, :description)
  end
end
