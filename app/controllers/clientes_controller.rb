class ClientesController < ApplicationController
  def index
    @clients = current_hro.clientes
  end
end