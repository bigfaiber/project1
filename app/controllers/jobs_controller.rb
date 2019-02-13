class JobsController < ApplicationController

    #before_action :user_permition!, only: [:create, :new]
    protect_from_forgery with: :exception

    def index
        if isCliente?
        @client = Cliente.find(params[:user_id])
        @jobs = @client.jobs
        else
        @client = Cliente.all
        @jobs = Job.all
        end
    end

    def show
        @client = Cliente.find(params[:user_id])
        @job = @client.jobs.find(params[:id])
        #@worker = Trabajador.find(params[:user_id])
    end

    def new
        @user = current_user
        @job = Job.new
    end

    def create
        
        @user = current_user
        @user.jobs.create(post_params)
    end



    private
    def post_params
        params.require(:job).permit(:user_id, :position, :description, :requirements, :start_datetime, :end_datetime, :salary)
    end

    def isCliente?
        User.find(params[:user_id]).role == 'Cliente' ? true : false
    end

end