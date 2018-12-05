class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :update, :destroy]

    # GET /comments 
    def index 
        @comments = Comment.all 

        render json: @comments
    end 

    # GET /comments/:id
    def show 
        render json: @comment
    end 

    # POST /comments
    def create 
        @comment = Comment.create(comment_params)
        # byebug
        if @comment.valid? 
            render json: {id: @comment.id, content: @comment.content, commenter_id: @comment.commenter_id, image_id: @comment.image_id}
        else 
            render json: @comment.errors.full_messages 
        end 
    end 

    # PATCH/PUT /comments/:id
    def update 
        if @comment.update(comment_params)
            render json: @comment 
        else 
            render json: @comment.errors.full_messages
        end 
    end 

    # DELETE /comments/:id
    def destroy
        @comment.destroy 
    end 

    private 

    def set_comment 
        @comment = Comment.find(params[:id])
    end 

    def comment_params
        params.require(:comment).permit(:content, :commenter_id, :image_id)
    end
end
