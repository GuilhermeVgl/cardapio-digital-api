class ApplicationController < ActionController::Base
  layout :determine_layout
  before_action :authenticate_user!

  def index
    render 'pages/home' # Renderiza a visão 'home' dentro do diretório 'pages'
  end

  def not_found
    render 'pages/not_found'
  end

  def determine_layout
    if devise_controller? && (action_name == 'new' || action_name == 'create')
      "no_layout"
    else
      "application"
    end
  end
end
