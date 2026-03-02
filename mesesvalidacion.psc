Algoritmo sin_titulo
	Definir Mnacio, Dnacio Como Entero
	Escribir "Ingrese Mes y Dia, que nacio"
	Leer Mnacio, Dnacio
	si Mnacio==2 Entonces
		Si Dnacio>=1 y Dnacio<=28 Entonces
			Escribir "Fecha valida"
		SiNo
			Escribir "Error, fecha invalida"
		FinSi
	SiNo
		Si Mnacio==4 o Mnacio==6 o Mnacio==9 o Mnacio==11 Entonces
			si Dnacio>=1 y Dnacio<=30 Entonces
				Escribir "Fecha valida"
			SiNo
				Escribir "Error, fecha invalida"
			FinSi
		SiNo
			Si Dnacio>=1 Y Dnacio<=31 Entonces
				Escribir "Fecha valida"
			SiNo
				Escribir "Error, fecha invalida"
			FinSi
		FinSi
	FinSi	
FinAlgoritmo