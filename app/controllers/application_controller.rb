class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_signed_in?
  
  # 권한 부여
  def current_user
    # 현재 접속한 유저
    # 만약에 user_id가 비어있다면 뒤의 코드를 실행 / 비어있지 않다면 넘어간다라는 의미의 코드
    if !session[:user_id].nil?
      @current_user = User.find(session[:user_id])
    end
    @current_user
    # 같은 코드
    # @current_user ||= User.find(session[:user_id])
  end

  def user_signed_in?
    # 유저의 로그인 여부(?는 boolean타입이 되는 것이 약속)
    # session[:user_id]가 비어있으면 로그인 안한 거 >> false return
    # session[:user_id]가 채워져있으면 로그인 한 거 >> true return
    !session[:user_id].nil?
  end

  def authenticate_user!
    # 유저가 로그인 했다면 진행
    # 유저가 로그인 안했다면 로그인 페이지로
    if session[:user_id].nil?
      redirect_to '/signin', notice: "로그인이 필요합니다."
    end
  end
end
