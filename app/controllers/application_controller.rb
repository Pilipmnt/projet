class ApplicationController < ActionController::Base
  before_filter :authenticate_admin!
  protect_from_forgery
  
  def after_sign_in_path_for(resource_or_scope)
    posts_path
  end
  
end
