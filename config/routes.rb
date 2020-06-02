Rails.application.routes.draw do
  # ErrorCause：blogはタイポ.
  # FixReason：blogsコントローラーのアクションを指定したいので、blogsに修正
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end