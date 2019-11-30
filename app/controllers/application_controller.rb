class ApplicationController < ActionController::Base
  before_action :authenticate_user!

protected

  def after_sign_in_path_for(resource)
    # return the path based on resource
    posts_path
  end

  def after_sign_out_path_for(resource)
    # return the path based on resource
    root_path
  end
end
