Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'home#index'

  #blog
  get 'blogs' => 'blog#index'
  get 'blogs/:id' => 'blogs#detail'

end
