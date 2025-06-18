Algoritmo examen_parcial_ejercicio_2
	Definir productos,stockTotal,sumaPasillo,posicion,mayorPasillo Como Entero
	P=3
	E=4
	Dimension productos[P,E]
	
	//ingreso los datos aletorea y automáticamente
	Para i<-1 Hasta P Con Paso 1 Hacer
		Escribir "----Pasillo ",i,"----"
		Para j<-1 Hasta E Con Paso 1 Hacer
			productos[i,j]<-Aleatorio(1,100)
			Escribir "Estantería ",j,": ",productos[i,j]
		Fin Para
		Escribir "><><><><><><><><><"
	Fin Para
	
	//calculo que pasillo tiene mas stock total
	posicion<-0
	mayorPasillo<-0
	Para i<-1 Hasta P Con Paso 1 Hacer
		sumaPasillo<-0
		Para j<-1 Hasta E Con Paso 1 Hacer
			sumaPasillo<-sumaPasillo+productos[i,j]
		Fin Para
		Si sumaPasillo>mayorPasillo Entonces
			mayorPasillo<-sumaPasillo
			posicion<-i
		Fin Si
	Fin Para
	
	//calculo el stock total de la tienda
	stockTotal<-0
	Para i<-1 Hasta P Con Paso 1 Hacer
		Para j<-1 Hasta E Con Paso 1 Hacer
			stockTotal<-stockTotal+productos[i,j]
		Fin Para
	Fin Para
	Escribir "Resultados:"
	Escribir ""
	Escribir "El pasillo con mas stock es el pasillo ",posicion,", con ",mayorPasillo," unidades"
	Escribir ""
	Escribir "El stock total de la tienda es de ",stockTotal," unidades"
FinAlgoritmo