class CrispsController < ApplicationController
    def index
        @crisps = Crisp.all.order("created_at DESC")
    end

    def new
        @crisp = Crisp.new
    end

    def create
        @crisp = Crisp.new(book_params)

        if @crisp.save
            redirect_to root_path
        else 
            render 'new'
        end
    end

    private

    def book_params
        params.require(:crisp).permit(:name)
    end
end