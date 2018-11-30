class LikesController < ApplicationController
    before_action :set_like, only: [:show, :update, :destroy]

   # GET /likes 
   def index 
    @likes = Like.all 

        render json: @likes
    end 

    # GET /likes/:id
    def show 
        render json: @like
    end 

    # POST /likes
    def create 
        @like = Like.new(like_params)
        if @like.save 
            render json: @like 
        else 
            render json: @like.errors.full_messages 
        end 
    end 

    # PATCH/PUT /likes/:id
    def update 
        if @like.update(like_params)
            render json: @like 
        else 
            render json: @like.errors.full_messages
        end 
    end 

    # DELETE /likes/:id
    def destroy
        @like.destroy 
    end 

    private 

    def set_like 
        @like = Like.find(params[:id])
    end 

    def like_params
        params.require(:like).permit(:like_count)
    end
end
