class CrispsController < ApplicationController
    def index
    end

    def new
        @crisp = Crisp.new
    end

    def create
        @crisp = Crisp.new(book_params)
    end

    private

    def book_params
        params.require(:crisp).permit(:name)
    end
end
