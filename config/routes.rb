Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'temperatura_mas_baja/' => 'temperaturas#temperatura_mas_baja'
  get 'obtener_historicos/' => 'temperaturas#obtener_historicos'
end
