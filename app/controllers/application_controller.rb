# encoding:utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  def render_json_ok
    render :json => { code: 1 }
  end
  
end
