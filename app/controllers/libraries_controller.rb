 class LibrariesController < ApplicationController
    before_action :check_for_login

    def new
        @library = Library.new
    end 


    def create 
        library = Library.create library_params
        @current_user.libraries << library
        redirect_to root_path
    end 

    private 
    def library_params
        params.require(:library).permit(:title)
    end 
end 
 