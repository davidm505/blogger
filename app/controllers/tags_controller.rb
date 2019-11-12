class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def destroy
        @tag = params[:id]

        Tag.destroy(@tag)

        redirect_to tags_path()
    end
end
