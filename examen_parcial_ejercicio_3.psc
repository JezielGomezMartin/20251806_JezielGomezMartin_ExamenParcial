Algoritmo examen_parcial_ejercicio_3
	Definir matriz,mayorEmpleado,menorEmpleado,sumaHoras,masHoras,menosHoras Como Entero
	E=5
	D=7
	Dimension matriz[E,D]
	
	//pido e ingreso los datos al usuario
	Para i<-1 Hasta E Con Paso 1 Hacer
		Escribir "----Empleado ",i,"----"
		Para j<-1 Hasta D Con Paso 1 Hacer
			Escribir "Día ",j
			Leer matriz[i,j]
			//creo los limites de 0 horas hasta 24 horas
			Si matriz[i,j]>8 Entonces
				Escribir "***ERROR*** (el límite de horas diarias de trabajo es 8)"
				Repetir
					Leer matriz[i,j]
				Hasta Que matriz[i,j]<=8
			Fin Si
			Si matriz[i,j]<0 Entonces
				Escribir "***ERROR*** (una persona no puede trabajar horas negativas)"
				Repetir
					Leer matriz[i,j]
				Hasta Que matriz[i,j]>=0
			Fin Si
		Fin Para
		Escribir "><><><><><><><><><"
	Fin Para
	
	//calculo qué empleado trabajó mas horas
	mayorEmpleado<-0
	masHoras<-0
	Para i<-1 Hasta E Con Paso 1 Hacer
		sumaHoras<-0
		Para j<-1 Hasta D Con Paso 1 Hacer
			sumaHoras<-sumaHoras+matriz[i,j]
		Fin Para
		Si sumaHoras>masHoras Entonces
			masHoras<-sumaHoras
			mayorEmpleado<-i
		Fin Si
	Fin Para
	
	//calculo qué empleado trabajó menos horas
	menorEmpleado<-0
	menosHoras<-60
	Para i<-1 Hasta E Con Paso 1 Hacer
		sumaHoras<-0
		Para j<-1 Hasta D Con Paso 1 Hacer
			sumaHoras<-sumaHoras+matriz[i,j]
		Fin Para
		Si sumaHoras<menosHoras Entonces
			menosHoras<-sumaHoras
			menorEmpleado<-i
		Fin Si
	Fin Para
	
	Escribir "Resultados"
	Escribir ""
	Escribir "El empleado que trabajó más horas es el empleado ",mayorEmpleado," (trabajó ",masHoras," horas)"
	Escribir ""
	Escribir "El empleado que trabajó menos horas es el empleado ",menorEmpleado," (trabajó ",menosHoras," horas)"
FinAlgoritmo