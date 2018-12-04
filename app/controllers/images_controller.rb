class ImagesController < ApplicationController
    before_action :set_image, only: [:show, :update, :destroy]

    # GET /images
    def index
        @images = Image.all

        render json: @images
    end

    # GET /images/:id
    def show
        render json: @image
    end

    # POST /images
    def create
        @image = Image.create(image_params)
          byebug
        if @image.valid?
          # byebug
          render json: @image

        else
            render json: @image.errors.full_messages
        end

    end

    # PATCH/PUT /images/:id
    def update
        if @image.update(image_params)
            render json: @image
        else
            render json: @image.errors.full_messages
        end
    end

    # DELETE /images/:id
    def destroy
        @image.destroy
    end

    private

    def set_image
        @image = Image.find(params[:id])
    end

    def image_params
        params.require(:image).permit(:caption, :img, :poster_id)
    end
end
