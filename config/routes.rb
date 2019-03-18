Rails.application.routes.draw do
  get 'object/import'
  get '/' => 'home#top'
end
