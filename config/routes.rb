Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/name' => 'games#name'
  get '/guess' => 'games#guess'
  get '/url_segment_params/:this_is_a_key' => 'games#url_segment'
  get '/url_segment_number/:enter_number' => 'games#url_segment_number'
end
