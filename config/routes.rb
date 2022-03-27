Rails.application.routes.draw do
  devise_for :members, {
    sessions: 'members/sessions',
    passwords: 'members/passwords',
    registrations: 'members/registrations'
  } #deviseを使用する際にURLとしてmembersを含むことを示しています。

  scope module: :public do
    root 'homes#top'
  end

  scope :members do
    get '/members/mypages/:id' => 'public/members#show', as: 'mypages'
  end

  namespace :public do
    # ↓topページをルートパスにするために設定する。↓
    resources :members, only: [:edit, :update]
    resources :posts, only: [:new, :create, :show, :edit, :update]
  end

  devise_for :admins, {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admin do
    root 'homes#top'
    resources :members, only: [:index, :show ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
