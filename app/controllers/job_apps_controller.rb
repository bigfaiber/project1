class JobAppsController < ApplicationController

   # before_action :user_permition!, only: [:new, :index]
    def new
        @user = current_user
        @jobapp = JobApp.new

    end

    def index
        if isCliente?
            job = Job.find(params[:user_id])
            @jobapps = job.job_apps
        else
        @worker = Trabajador.find(params[:user_id])
        @jobapps = @worker.job_apps
        end
    end

    def isCliente?
        User.find(params[:user_id]).role == 'Cliente' ? true : false
    end
end