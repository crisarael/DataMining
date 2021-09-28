#Funciones encontradas en R:

#1. Obtener Raiz cuadrada
sqrt(64)

#2.Extraer caracteres de una cadena de texto
texto<-substring("Cadena de texto",3,7)

#3. Obtener tipo de dato
variable<-5
mode(variable)

#4.Obtener el directorio de trabajo actual
getwd()

#5. Crea un vector con elementos identicos
rep(1,5)

#6. Secuencia de numeros reales
seq(1,3,5)

#7.Borra objetos en memoria
rm(name)

#8. Crea un marco de datos
expand.grid(a=c(60,80), p=c(100, 300), color=c("Blanco", "Azul"))

#9. Cuenta el total de caracteres incluyendo espacios
ncaracteres <- nchar("Total de caracteres incluyento espacios")
ncaracteres

#10.Crear lista
lista<-list("Carro","Casa","Bicicleta")

#11.Obtener el alor absoluto
abs(-1)

#12. Redondear
round(15.6876,2)

#13.Obtener el factorial de un numero
factorial(4)

#14. Muestra detalles de objetos en memoria
ls.str()

#15.Redondear hacia abajo
floor(9.4)
#16. Permite mostrar un grafico
layout(matrix(1:4, 2, 2))
layout.show(4)

#17.Redondear hacia arriba
ceiling(9.9)

#18. Producto de los elementos
prod(5,5)

#19.Converir texto a mayusculas
texto <- toupper("Texto en mayusculas")
texto

#20.Converir texto a minusculas
TextoMinusculas <- tolower("Texto en minusculas")
print(TextoMinusculas)


