class Api::V1::FavoritesController < ApplicationController
    def index
        favorites = Favorite.all 
        render json: favorites
    end

    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite 
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {message: "Successfully removed from favorites"}
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user, :place)
    end
end
