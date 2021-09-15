class ArticlesController < ApplicationController
    def index        
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(user_params)
        if @article.save
            redirect_to articles_path
        else
            render 'new'
        end
    end

    private 
    
    def user_params
        params.require(:article).permit(:title,:body)
    end
end
