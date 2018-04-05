Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/github_hook' => 'github_web_hook#process_webhook'
end
