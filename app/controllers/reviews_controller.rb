class ReviewsController < ApplicationController
    before_action :find_crisp

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.crisp_id = @crisp.id
        @review.user_id = current_user.id

        if @review.save
            redirect_to crisp_path(@crisp)
        else 
            render 'new'
        end
    end

    private

    def review_params
        params.require(:review).permit(:rating, :comment)
    end

    def find_crisp
        @crisp = Crisp.find(params[:crisp_id])
    end
end
