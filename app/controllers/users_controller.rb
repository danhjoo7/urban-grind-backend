class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end
    
      # def create
      #   user = User.create(user_params)
      #   render json: plant
      # end
    
      # def show
      #   plant = Plant.find(params[:id])
      #   render json: plant
      # end
    
    
      # def update
      #   plant = Plant.find(params[:id])
      #       plant.update(plant_params)
      #       render json: plant
      # end
    
      # def destroy
      #       plant = Plant.find(params[:id])
      #       plant.destroy
      #       render json: { message: "Sorry to hear of your loss 💀💔" }
      # end
      
      private
    
      def user_params
        params.require(:user).permit(:name, :residence, :age, :occupation, :profile_pic)
      end
    
end
