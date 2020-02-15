class TemperaturasController < ApplicationController

  def temperatura_mas_baja
    @tempMasBaja = Temperatura.minimum(:temperatura)
  end

  def obtener_historicos
    #@temperaturas = Temperatura.all
    @filterrific = initialize_filterrific(
    Temperatura,
    params[:filterrific]
  ) or return
  @temperaturas = Temperatura.all

  respond_to do |format|
    format.html
    format.js
  end
  end
end
