class SessionController < ApplicationController
  def login
    @username = session[:user]
    @password = session[:password]
    @User = User.find(:all, :conditions => {:username => 'juan'}).first
    if @User
      if @User.password = @password
        session[:logged] = true
        @User.last_login = DateTime.now
        session[:last_login] = @User.last_login
        session[:username] = @username
        @User.save
        #redirect_to :back
      end
    end
    redirect_to :back
  end

  def logout
  end

end
