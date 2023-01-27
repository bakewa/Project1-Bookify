class WorksController < ApplicationController
    before_action :check_for_login

    def form
    end 

    def index
        @works = Work.all
    end 

    def new 
        @works = Work.new
    end

    def create 
        work = Work.create work_params
        redirect_to authors_path
    end
    
    def edit
        @work = Work.find params[:id]
    end

    def update 
        work = Work.find params[:id]
        work.update work_params 
        redirect_to work
    end 

    def show
        @work = Work.find params[:id]
      end    

    def destroy
        work = Work.find params[:id]
        work.destroy
        redirect_to authors_path
      end

    private
    def work_params
        params.require(:work).permit(:title, :year, :author_id, :user_id)
    end 
end 

    


