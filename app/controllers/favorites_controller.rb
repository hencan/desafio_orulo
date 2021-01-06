class FavoritesController < ApplicationController
  before_action :authenticate_user!
  # before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index
    # @favorites = Favorite.all

    @favorites = Favorite.where(fav_user: current_user.id)

    @actual_page = params[:page]

    # puts @actual_page
  end

  # GET /favorites/1
  # GET /favorites/1.json
  # def show
  # end

  # GET /favorites/new
  # def new
  #   @favorite = Favorite.new
  # end

  # GET /favorites/1/edit
  # def edit
  # end

  # POST /favorites
  # POST /favorites.json
  def create
    # puts favorite_params

      @favorite = Favorite.new(favorite_params)

      respond_to do |format|
        if @favorite.save
          format.html { redirect_to request.referrer, notice: 'O item foi adicionado a Favoritos.' }
          # format.json { render :show, status: :created, location: @favorite }
        else
          format.html { redirect_to request.referrer, notice: 'Falha ao adicionar em Favoritos. Tente novamente mais tarde.' }
          # format.html { render :new }
          # format.json { render json: @favorite.errors, status: :unprocessable_entity }
        end
      end

  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  # def update
  #   respond_to do |format|
  #     if @favorite.update(favorite_params)
  #       format.html { redirect_to @favorite, notice: 'Favorite was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @favorite }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @favorite.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favorites_url, notice: 'O item foi removido dos Favoritos' }
      format.json { head :no_content }
    end
  end

  # def correct_user
  
  #   @favorite = current_user.favorites.find_by(id: params[:id])
  #   redirect_to root_path, notice: "Não autorizado a ver favoritos" if @favorite.nil?

  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_params
      params.require(:favorite).permit(:fav_id, :fav_name, :fav_user, :fav_image, :fav_description, :fav_finality, :fav_min_bedrooms, :fav_min_bathrooms, :fav_min_area, :fav_street_type, :fav_street, :fav_area, :fav_city, :fav_state, :fav_min_price)
    end
end
