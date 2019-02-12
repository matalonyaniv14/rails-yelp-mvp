Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
  resources :reviews
  end
end


# A restaurant has a name, an address, a phone number,
# a category (chinese, italian...) and many reviews

# A review has content (the text), a
# rating (between 0 and 5) and references a restaurant
