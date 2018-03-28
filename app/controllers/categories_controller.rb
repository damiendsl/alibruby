class CategoriesController < ApplicationController
    def index
        @categories = Categorie.all
    end
    def show
        @categorie = Categorie.find(params[:id])
    end
    def new
    
    end
    def create
        #render plain: params[:categorie].inspect
        @categorie = Categorie.new(categorie_params)
        if(@categorie.save)
            redirect_to @categorie
        else
            render 'new'
        end
    end
    private def categorie_params
        params.require(:categorie).permit(:title)
    end
end
