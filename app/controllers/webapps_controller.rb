class WebappsController < ApplicationController
  before_action :set_webapp, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /webapps or /webapps.json
  def index
    @search = Webapp.ransack(params[:q])
    @webapps = @search.result
  end

  # GET /webapps/1 or /webapps/1.json
  def show
  end

  # GET /webapps/new
  def new
    @webapp = Webapp.new
    @webapp.developers.build
  end

  # GET /webapps/1/edit
  def edit
    @webapp = Webapp.find(params[:id])
    authorize! :edit, @webapp
    render :edit
  end

  # POST /webapps or /webapps.json
  def create
    @webapp = Webapp.new(webapp_params)

    respond_to do |format|
      if @webapp.save
        format.html { redirect_to webapp_url(@webapp), notice: "Webapp was successfully created." }
        format.json { render :show, status: :created, location: @webapp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @webapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webapps/1 or /webapps/1.json
  def update
    respond_to do |format|
      if @webapp.update(webapp_params)
        format.html { redirect_to webapp_url(@webapp), notice: "Webapp was successfully updated." }
        format.json { render :show, status: :ok, location: @webapp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @webapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webapps/1 or /webapps/1.json
  def destroy
    @webapp.destroy

    respond_to do |format|
      format.html { redirect_to webapps_url, notice: "Webapp was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webapp
      @webapp = Webapp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def webapp_params
      params.require(:webapp).permit(:project_name, :language, :framework, :description, :notes, :status, :authentication, :database, :server_os, :server_location, :documentation, :git_repo, :app_url, :risk_manage_consideration, :launch_date, :end_of_life_date)
    end
end
