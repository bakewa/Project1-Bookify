#  class LibrariesController < ApplicationController
#     before_action :check_for_login

#     def new
#         @library = Library.new
#     end 

#     def create 
#         library = Library.create library_params
#         @current_user.libraries << library
#         redirect_to root_path
#     end 

#     private 
#     def library_params
#         params.require(:library).permit(:title)
#     end 
# end 
class LibrariesController < ApplicationController
    before_action :check_for_login
    
    def index
      @libraries = Library.all
    end 
    
    def new
      @library = Library.new
    end
  
    def create 
      library = Library.create library_params
      redirect_to library
    end 
  
    def edit 
      @library = Library.find params[:id]
    end 
  
    def update
      library = Library.find params[:id]
      library.update library_params
      redirect_to library
    end 
  
    def show 
      @library = Library.find params[:id]
    end 
  
    def destroy
      library = Library.find params[:id]
      library.destroy
      redirect_to libraries_path
    end 
  
    private 
    def library_params
      params.require(:library).permit(:title, :user_id)
    end 
  end
  