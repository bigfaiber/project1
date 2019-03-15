module ApplicationHelper

 #   def user_permition!
 #       if current_user.id != params[:user_id].to_i
 #           redirect_to user_path(current_user)
 #       end
 #   end

    def worker_logged_in?
        current_user && current_user.role == 'Trabajador'
    end

    def client_logged_in?
        current_user && current_user.role == 'Cliente'
    end

    def hro_logged_in?
        current_user && current_user.role == 'HRO'
    end

    def current_worker
        Trabajador.find(current_user.id) if worker_logged_in?
    end

    def current_client
        Cliente.find(current_user.id) if client_logged_in?
    end

    def current_hro
        Hro.find(current_user.id) if hro_logged_in?
    end


end
