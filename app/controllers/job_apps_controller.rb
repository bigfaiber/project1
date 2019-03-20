class JobAppsController < ApplicationController

   # before_action :user_permition!, only: [:new, :index]
    def new
        @user = current_user
        @jobapp = JobApp.new

    end

    def index
        if client_logged_in?
            @jobs = current_client.jobs

        elsif worker_logged_in?
            @worker = Trabajador.find(params[:user_id])
            @jobapps = @worker.job_apps
        else
            @jobapps = current_hro.job_apps.current
        end
    end

    def create
        job = Job.find(params[:job_id])
        current_worker.jobs << job
        redirect_to user_job_apps_path(current_worker.id)
    end

    def update
        jobapp = JobApp.find(params[:job_app_id])
        jobapp.update(approved: true)
        redirect_to user_job_apps_path(current_hro.id)
    end

    def destroy
        jobapp = JobApp.find(params[:job_app_id])
        jobapp.destroy
        redirect_to user_job_apps_path(current_hro.id)
    end

end