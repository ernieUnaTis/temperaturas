Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'temperatura_mas_baja/' => 'temperaturas#temperatura_mas_baja'
  get 'obtener_historicos/' => 'temperaturas#obtener_historicos'
    get 'obtener_historicos_por_fecha_registro/' => 'temperaturas#obtener_historicos_por_fecha_registro'
      get 'obtener_historicos_por_fecha_registro_desc/' => 'temperaturas#obtener_historicos_por_fecha_registro_desc'
        get 'obtener_historicos_por_temperatura_desc/' => 'temperaturas#obtener_historicos_por_temperatura_desc'
          get 'obtener_historicos_por_temperatura/' => 'temperaturas#obtener_historicos_por_temperatura'
end
