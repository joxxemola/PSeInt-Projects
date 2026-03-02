Algoritmo calcuclaredad
	Definir Aactual, Mactual, Dactual, Anacio, Dnacio, Edad Como Entero
	Aactual <- 2025
	Mactual <- 8
	Dactual <- 12
	Escribir 'Ingrese Año, Mes, Dia que nacio'
	Leer Anacio, Mnacio, Dnacio
	Edad <- Aactual-Anacio
	Si Mnacio>Mactual Entonces
		Edad <- Edad-1
	SiNo
		Si Mnacio==Mactual Entonces
			Si Dnacio>Dactual Entonces
				Edad <- Edad-1
			FinSi
		FinSi
	FinSi
	Si Edad>0 Entonces
		Escribir 'Tienes ', Edad, ' Años'
	SiNo
		Escribir 'Error, eecha invalida, no se puede calcular edad'
	FinSi
FinAlgoritmo
