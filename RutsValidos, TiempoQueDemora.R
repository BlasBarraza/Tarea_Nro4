source('Funciones.R')
#Tarea Ruts Validos y Tiempo que demora en ejecutar.

#Ruts: Lista compuesta por Int y string intercalado.
#Def Ruts: Lista de 5001 datos distintos, de 8 digitos (rut)
#y el digito verificador usando lan funcion (dv) asociado al dato
#Ejemplo: Ruts
# [1] 18938259 - 6

#dv: Int->String
#Def dv: Retorna el digito verificador de cada elemento de la lista para validar el Rut
#Ejemplo: dv(9259674)->k


#Test

dv(18950273)

rm(Ruts)

t<-proc.time()
Ruts<-list()
for(i in 18933987:(18933987+5000)){
  rut<-print(paste(i,"-",dv(i)))
  Ruts <- c(Ruts,rut)
}
proc.time()-t
