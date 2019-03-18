Rails.application.routes.draw do
  get 'github_contribute_count/create_tweet_text'
  get 'object/import'
  get '/' => 'home#top'
  # get '/' => 'home#count_contribute'
end
