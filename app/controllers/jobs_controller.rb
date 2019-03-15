class JobsController < ApplicationController

    #before_action :user_permition!, only: [:create, :new]
    protect_from_forgery with: :exception

    def index
        if client_logged_in?
            @client = Cliente.find(params[:user_id])
            @jobs = @client.jobs
        else
            @client = Cliente.all
            @jobs = Job.all
        end
    end

    def show
        @client = Cliente.find(params[:user_id])
        @job = @client.jobs.find(params[:id])#.order(start_datetime: :desc)[0...5]
        #@worker = Trabajador.find(params[:user_id])
    end

    def new
        @user = Cliente.find(current_client.id)
        @job = Job.new
    end

    def create
        @user = Cliente.find(current_client.id)
        @user.jobs.create(post_params)
        redirect_to cliente_jobs_path(current_client.id)
    end

    private
    def post_params
        params.require(:job).permit(:user_id, :position, :description, :requirements, :start_datetime, :end_datetime, :salary, :quantity)
    end



end