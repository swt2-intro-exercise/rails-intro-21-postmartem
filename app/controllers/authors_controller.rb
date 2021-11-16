class AuthorsController < ApplicationController
    def new
    end
    def create
        #render plain: params[:article].inspect
        @author = Author.new(author_params)

        @author.save
        redirect_to root_path, notice: 'Success!'
    end

    private
        def author_params
            params.require(:author).permit(:first_name, :last_name, :website)
        end
  end
