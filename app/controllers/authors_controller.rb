class AuthorsController < ApplicationController
    def show
        @author = Author.find(params[:id])
    end

    def new
    end

    def index
        @authors = Author.all
    end

    def create
        #render plain: params[:article].inspect
        @author = Author.new(author_params)

        @author.save
        redirect_to author_path(@author), notice: 'Success!'
    end

    private
        def author_params
            params.require(:author).permit(:first_name, :last_name, :website)
        end
  end
