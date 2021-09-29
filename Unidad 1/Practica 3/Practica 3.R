Datos

ingresos  <- c ( 14574.49 , 7606.46 , 8611.41 , 9175.41 , 8058.65 , 8105.44 , 11496.28 , 9766.09 , 10305.32 , 14379.96 , 10713.97 , 15433.50 )
gastos  <- c ( 12051.82 , 5695.07 , 12319.20 , 12089.72 , 8658.57 , 840.20 , 3285.73 , 5821.12 , 6976.93 , 16618.61 , 10054.37 , 3803.96 )


#Calcule las ganancias como las diferencias entre ingresos y gastos

ganancia <- ingresos - gastos
ganancia

#Calcule el impuesto como el 30% de la ganancia y redondee a 2 puntos decimales

impuesto <- round(ganancia * 0.30, 2)
impuesto

#Calcular las ganancias restantes después de deducir los impuestos

beneficio_des_impuesto <- ganancia - impuesto
beneficio_des_impuesto

#Calcular el margen de beneficio como beneficio después de impuestos sobre ingresos
#Redondee a 2 decimales, luego multiplique por 100 para obtener%

ganancia_margen <- round(beneficio_des_impuesto/ingresos, 2)*100
ganancia_margen

#Calcule el beneficio medio después de impuestos durante los 12 meses

ganancia_media <- mean(beneficio_des_impuesto)
ganancia_media

# Encuentre los meses con beneficios después de impuestos superiores a la media

meses_buenos <- beneficio_des_impuesto> ganancia_media
meses_buenos

 # !Los meses malos son lo opuesto a los buenos meses!

meses_malos <-! buenos.meses
meses_malos

#El mejor mes es cuando el beneficio después de impuestos era igual al máximo

mejor_mes <-beneficio_des_impuesto==max(beneficio_des_impuesto)
mejor_mes

# El peor mes es cuando la ganancia después de impuestos era igual al mínimo

peor_mes <-beneficio_des_impuesto==min(beneficio_des_impuesto)
peor_mes

#Convertir todos los cálculos a unidades de mil dólares

ingresos.1000<-round(ingresos/1000, 0)
gastos.1000<-round(gastos/1000, 0)
ganancia.1000<-round(ganancia/1000, 0)
beneficio_des_impuesto.1000<-round(beneficio_des_impuesto /1000, 0)

#Imprimir resultados

ingresos.1000
gastos.1000
ganancia.1000
beneficio_des_impuesto.1000
ganancia_margen
meses_buenos
meses_malos
mejor_mes
peor_mes


#BONUS:
# Vista previa de lo que viene en la siguiente sección

M <- rbind(
  ingresos.1000,
  gastos.1000,
  ganancia.1000,
  beneficio_des_impuesto.1000,
  ganancia_margen,
  meses_buenos,
  meses_malos,
  mejor_mes,
  peor_mes
)

#Imprima la matriz
M