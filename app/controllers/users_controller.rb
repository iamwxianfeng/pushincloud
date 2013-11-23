# encoding:utf-8
class UsersController < ApplicationController

  def create
    user = User.new(params[:user])
    user.app = App.new({ key: Push::Token.make_token })
    if user.save
      Resque.enqueue(UserMailer,user.id,'get_api')
      render_json_ok
    else
      render :json => { code: 0,error: user.error }
    end
  end

end