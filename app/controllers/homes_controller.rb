class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  # GET /homes
  # GET /homes.json
  def index
    @countries = Country.all
    @cities = []
    if params[:country].present?
      @cities = Country.find(params[:country]).cities
    end
    if request.xhr?
      respond_to do |format|
        format.json {
          render json: {cities: @cities}
        }
      end
    end
  end

  # POST /homes
  # POST /homes.json
  def create
    @home = Home.new(home_params)
    @countries = Country.all
    @cities = City.all

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_params
      params.fetch(:home, {})
    end

