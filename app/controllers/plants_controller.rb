class PlantsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  before_action :set_gardens

  # GET /plants
  # GET /.json
  def index
    @plants = Plant.all
    @gardens = Garden.all
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
    @plant = Plant.find(params[:id])
  end

  # GET /plants/new
  def new
    @plant = Plant.new

  end

  # GET /plants/1/edit
  def edit

  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user


    respond_to do |format|
      if @plant.save
        format.html { redirect_to plants_path, notice: 'Plant was successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new_plant }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    def set_gardens
      @gardens = current_user.gardens
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:latin_name, :common_name, :image, :garden_id)
    end
end
