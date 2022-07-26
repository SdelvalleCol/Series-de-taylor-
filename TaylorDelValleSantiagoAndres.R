formula = function(x) {
  resultado = sin(4*x+6)
  return(resultado)
}

formula_impar = function(indice,x){
  resultado = indice*sin(4*x+6)
  return(resultado)
}

formula_par = function(indice,x){
  resultado = indice*cos(4*x+6)
  return(resultado)
}


##Lista
data=c()
##Puntos
x_actual = 2.5
x_posterior = 2.9
h = x_posterior - x_actual
##Derivadas
contador = 1
contador_signo = 1
aux = 0
#Verificacion
f_futura = formula(x_posterior)
f_actual = 0
condicion = 10

while(condicion > 3){
  print("------------------------------------------------")
  print(paste("Iteración: " , contador))
  if(contador %% 2 !=0){
    if(contador_signo>2){
      data = c(data,-1*formula_impar(4^aux,x_actual))
      print(paste("-",4^aux,"SEN(4X+6)"))
      if(contador_signo==4){
        contador_signo=0
      }
    }else{
      data=c(data,formula_impar(4^aux,x_actual))
      print(paste(4^aux,"SEN(4X+6)"))
    }
  }else{
    if(contador_signo>2){
      data = c(data,-1*formula_par(4^aux,x_actual))
      print(paste("-",4^aux,"COS(4X+6)"))
      if(contador_signo==4){
        contador_signo=0
      }
    }else{
      data=c(data,formula_par(4^aux,x_actual))
      print(paste(4^aux,"COS(4X+6)"))
    }
  }
  print(paste("Valor de X evaluado en cada iteracion: ",data[contador]))
  f_actual = f_actual + ((data[contador]/factorial(aux))*(h)^aux)
  print(paste("F_Actual: ",f_actual))
  
  aux = aux + 1
  contador = contador + 1
  contador_signo = contador_signo + 1
  
  condicion = abs(((f_futura-f_actual)/f_futura))*100
  print(paste("Condición: ",condicion))
}