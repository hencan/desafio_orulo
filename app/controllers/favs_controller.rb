class FavsController < ApplicationController
  before_action :set_fav, only: [:show, :edit, :update, :destroy]

  # GET /favs
  # GET /favs.json
  def index
    @favs = Fav.all
  end

  # GET /favs/1
  # GET /favs/1.json
  def show
  end

  # GET /favs/new
  def new
    @fav = Fav.new
  end

  # GET /favs/1/edit
  def edit
  end

  # POST /favs
  # POST /favs.json
  def create
    @fav = Fav.new(fav_params)

    respond_to do |format|
      if @fav.save
        format.html { redirect_to @fav, notice: 'Fav was successfully created.' }
        format.json { render :show, status: :created, location: @fav }
      else
        format.html { render :new }
        format.json { render json: @fav.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favs/1
  # PATCH/PUT /favs/1.json
  def update
    respond_to do |format|
      if @fav.update(fav_params)
        format.html { redirect_to @fav, notice: 'Fav was successfully updated.' }
        format.json { render :show, status: :ok, location: @fav }
      else
        format.html { render :edit }
        format.json { render json: @fav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favs/1
  # DELETE /favs/1.json
  def destroy
    @fav.destroy
    respond_to do |format|
      format.html { redirect_to favs_url, notice: 'Fav was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fav
      @fav = Fav.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fav_params
      params.require(:fav).permit(:orulo_id, :name, :description, :min_price, :min_area, :max_area, :min_bedrooms, :max_bedrooms, :min_suites, :max_suites, :min_parking, :max_parking, :min_bathrooms, :max_bathrooms, :price_per_private_square_meter, :status, :apts_per_floor, :number_of_floors, :features, :stock, :finality, :updated_at, :orulo_url, :developer_id, :developer_name, :publisher_id, :publisher_name, :address_street_type, :address_street, :address_number, :address_are, :address_city, :address_latitude, :address_longitude, :address_state, :address_zip_code, :opportunity_broker, :opportunity_client, :opportunity_exchange_units, :default_image_id, :default_image_description, :default_image_200x140, :default_image_520x280, :fav_user, :fav_update_at)
    end
end
