Rails.application.routes.draw do
    
    root 'home#index'
       
    get '/utilities'  => 'utilities#index'
    get 'utilities/pick_lucky_numbers'
    get 'utilities/get_stock_info'
    get '/utilities/show_stock_info'

 
    #get '/' => 'home#index'
    
    get '/animals/cat' => 'animals#cat'
    get '/animals/dog' => 'animals#dog'
    get '/anmials' => 'anmials#index'
end
