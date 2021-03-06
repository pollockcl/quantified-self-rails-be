Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get    'foods',     to: 'foods#index'
      get    'foods/:id', to: 'foods#show'
      post   'foods',     to: 'foods#create'
      patch  'foods/:id', to: 'foods#update'
      delete 'foods/:id', to: 'foods#destroy'

      get 'meals', to: 'meals#index'
      get 'meals/:id/foods', to: 'meals#show'
      post '/meals/:id/foods/:food_id', to: 'meals#update'
      delete '/meals/:id/foods/:food_id', to: 'meals#destroy'
    end
  end
end
