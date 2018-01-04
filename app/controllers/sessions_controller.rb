class SessionsController < ApplicationController
  def signup
  end

  def user_signup
    user = User.new(email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save
      redirect_to '/signin', notice: "회원가입이 완료 되었습니다."
    else
      redirect_to '/signup', notice: "잘못된 비밀먼호 입니다."
    end
  end

  def check_email
    @email = params[:email]
    @temp = User.find_by(email: params[:email]).nil?
  end

  def signin
  end

  def user_signin
    user = User.find_by(email: params[:email])
    # 유저를 찾아서 1. 유저가 비어있지 않고 2. 인증된다면 true
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/', notice: "로그인에 성공했습니다."
    else
      redirect_to '/signin', notice: "이메일이 없거나 비밀번호가 틀렸습니다."
    end
  end

  def signout
    session.delete(:user_id)
    redirect_to '/', notice: "로그아웃 되었습니다."
  end

end
