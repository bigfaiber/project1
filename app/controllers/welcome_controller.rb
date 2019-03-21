class WelcomeController < ApplicationController

    def index
        
        if current_user
            
                @jobs = Job.where("position like '%#{params[:search]}%'")


            redirect_to controller: 'users', action: 'show', id: current_user.id, jobs: @jobs.map(&:id)
            
        end
    end
end