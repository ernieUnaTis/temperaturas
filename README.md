# README

Se uso delayed_jobs

1.- Rails console
temp = Temperatura.find(1)
LeerTemperaturasJob.perform_later(temp)

2.- En otra consola ejecutar
rails jobs:work

3.- Las urls para probrar
http://127.0.0.1:3000/temperatura_mas_baja
http://127.0.0.1:3000/obtener_historicos_por_temperatura_desc
http://127.0.0.1:3000/obtener_historicos_por_temperatura
http://127.0.0.1:3000/obtener_historicos_por_registro_desc
http://127.0.0.1:3000/obtener_historicos_por_registro
