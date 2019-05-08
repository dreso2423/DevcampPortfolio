Rails.application.routes.draw do
  resources :portfolios



  get 'about-me', to: "pages#about"#instead of pages/about
#we can pass anything we want inside the get and that will be the link that will be redirected

  get 'contact', to: "pages#contact"

  resources :blogs

  root to:"pages#home"#Its going to look at this and point to the homepage of the aplication it can be called anything we want it to
end
