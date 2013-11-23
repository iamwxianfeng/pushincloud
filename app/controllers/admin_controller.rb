# encoding: utf-8
class AdminController < ApplicationController
  # before_filter :admin_required

  def admin_required
    authenticate_or_request_with_http_basic do |username,password|
      username == "pushincloud" and password == 'pushincloud'
    end
  end

end