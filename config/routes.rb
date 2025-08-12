Rails.application.routes.draw do
  # get "posts/show", to: "post#show"
  # root "posts#show"
  root "posts#index"

  resources :articles
  resources :posts

  get "articles", to: "articles#index"   # 모든 기사 목록
  get "articles/new", to: "articles#new" # 새 기사 작성 폼
  post "articles", to: "articles#create"  # 새 기사 생성
  get "articles/:id", to: "articles#show" # 특정 기사 보기
  get "articles/:id/edit", to: "articles#edit" # 기사 수정 폼
  patch "articles/:id", to: "articles#update" # 기사 업데이트
  delete "articles/:id", to: "articles#destroy" # 기사 삭제
end
