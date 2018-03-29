class CategoriesController < ApplicationController
    def index
        @categories = Categorie.all
    end
    def show
        @category = Categorie.find(params[:id])
    end
    def new
        @category=Categorie.new
    end
    def create
        #render plain: params[:categorie].inspect
        @category = Categorie.new(category_params)
        if(@category.save)
            redirect_to @category
        else
            render 'new'
        end
    end
    private def category_params
        params.require(:category).permit(:title)
    end
end
