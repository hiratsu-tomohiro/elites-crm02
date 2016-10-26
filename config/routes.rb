Rails.application.routes.draw do
  devise_for :users
  resources :customers
  root 'customers#index'
  #コメント登録フォームから取得したデータをcreate,destroyアクションでのみ処理
  resources :comments, only: [:create, :destroy]
end
