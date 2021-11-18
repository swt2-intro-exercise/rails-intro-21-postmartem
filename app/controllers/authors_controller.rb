class AuthorsController < ApplicationController
    def show
        @author = Author.find(params[:id])
    end

    def new
        @author = Author.new
    end

    def edit
        @author = Author.find(params[:id])
      end

    def index
        @authors = Author.all
    end

    def create
        #render plain: params[:article].inspect
        @author = Author.new(author_params)

        if @author.save
            redirect_to author_path(@author), notice: 'Success!'
            
         else
            render 'new'
        end
    end

    def update
        @author = Author.find(params[:id])
       
        if @author.update(author_params)
          redirect_to @author
        else
          render 'edit'
        end
      end

    private
        def author_params
            params.require(:author).permit(:first_name, :last_name, :website)
        end
  end
