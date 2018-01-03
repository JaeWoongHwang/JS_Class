Rails.application.routes.draw do
  resources :boards do
    member do
      post '/comments'  => 'boards#create_comment', as: :create_comment_to
    end
    member do
      delete '/comments/:id' => 'boards#delete_comment', as: :delete_comment_to
    end
    collection do
      get '/:board_id/like' => 'boards#like_board', as: :like
    end
  end

  root 'boards#index'

  # Sign in
  get '/signin' => 'sessions#signin', as: :user_signin # 로그인 페이지
  post '/signin' => 'sessions#user_signin' # 실제 로그인

  # Sign up
  get '/signup' => 'sessions#signup', as: :user_signup # 회원가입 페이지
  post '/signup' => 'sessions#user_signup' # 실제 회원가입

  # Sign out
  delete 'signout' => 'sessions#signout', as: :user_signout  # 로그아웃


end
