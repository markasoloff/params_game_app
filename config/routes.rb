Rails.application.routes.draw do
  namespace :api do
    get "/show_names_url" => 'params_games#show_names_action'
    get "/a_or_not_url" => 'params_games#a_or_not'
    get "/guessing/:my_number" => 'params_games#segment_guess'
  end

  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
