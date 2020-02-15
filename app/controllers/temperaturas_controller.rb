class TemperaturasController < ApplicationController

  def temperatura_mas_baja
    @tempMasBaja = Temperatura.minimum(:temperatura)
  end

  def obtener_historicos
    @temperaturas = Temperatura.all
    #@filterrific = initialize_filterrific(
    #Temperatura,
    #params[:filterrific]
  #) or return
  #@temperaturas = Temperatura.all

  #respond_to do |format|
  #  format.html
  #  format.js
  #end
  end

  def obtener_historicos_por_fecha_registro
    @temperaturas = Temperatura.order("registro asc")
    render "obtener_historicos"
  end

  def obtener_historicos_por_fecha_registro_desc
      @temperaturas = Temperatura.order("registro desc")
        render "obtener_historicos"
  end

  def obtener_historicos_por_temperatura_desc
    @temperaturas = Temperatura.order("temperatura desc")
      render "obtener_historicos"
  end

  def obtener_historicos_por_temperatura
      @temperaturas = Temperatura.order("temperatura asc")
        render "obtener_historicos"
  end
end
