Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	get "/product/create" => "product#create"
  	post "/product/create" => "product#created"
  	get "/product" => "product#index"

  	get "/orders/create" => "orders#create"
  	post "/orders/create" => "orders#created"
  	get "/orders" => "orders#index"

end