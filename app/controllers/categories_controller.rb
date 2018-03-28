class CategoriesController < ApplicationController
    def index
        
    end
    def new
    
    end
    def create
        render plain: params[:post].inspect
    end
end
