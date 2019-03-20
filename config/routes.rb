Rails.application.routes.draw do
  get '/' => 'home#top'
  get './' => 'home#top'
  get 'dashboard' => 'home#top'
  get 'user' => 'home#user'
  # get '/' => 'home#count_contribute'
end
