class ReviewsController < ApplicationController
    def index
        reviews = Review.all 
        render json: reviews
    end

    def create
        review = Review.create(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {message: "Review successfully deleted"}
    end

    private

    def review_params
        params.require(:review).permit(:stars, :description, :user, :place)
    end
end
