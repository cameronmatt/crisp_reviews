class CrispsController < ApplicationController

    def index
        @crisps = Crisp.all.order("created_at DESC")
    end

    def show
        @crisp = Crisp.find(params[:id])

        if @crisp.reviews.blank?
            @average_review = 0
        else
            @average_review = @crisp.reviews.average(:rating).round(2)
        end
    end

    def new
        @crisp = current_user.crisps.build
    end

    def create
        @crisp = current_user.crisps.build(crisp_params)

        if @crisp.save
            redirect_to root_path
        else 
            render 'new'
        end
    end

    private

    def crisp_params
        params.require(:crisp).permit(:name, :crisp_img)
    end

end