class CommentsController < ApplicationController
    before_action :find_review

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.review_id = @review.id
        @comment.user_id = current_user.id

        if @comment.save
            redirect_to crisp_path(@review.crisp)
        else 
            render 'new'
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:comment)
    end

    def find_review
        @review = Review.find(params[:review_id])
    end

end
