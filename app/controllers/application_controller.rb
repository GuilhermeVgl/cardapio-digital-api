class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def index
    render 'pages/home' # Renderiza a visão 'home' dentro do diretório 'pages'
  end

  def not_found
    render 'pages/not_found'
  end
end
