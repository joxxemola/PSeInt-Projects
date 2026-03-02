Algoritmo CalcularEdadConValidacion
	Definir Aactual, Mactual, Dactual, Anacio, Mnacio, Dnacio, Edad Como Entero
	Aactual <- 2025
	Mactual <- 8
	Dactual <- 13
	
	Escribir "Ingrese Año, Mes y Día de nacimiento:"
	Leer Anacio, Mnacio, Dnacio
	
	// Validar fecha
	Si Mnacio==2 Entonces
		Si Dnacio<1 O Dnacio>28 Entonces
			Escribir "Error: Fecha inválida (Febrero solo tiene 28 días en este cálculo)."
		FinSi
	SiNo
		
	Si Mnacio==4 O Mnacio==6 O Mnacio==9 O Mnacio==11 Entonces
		Si Dnacio<1 O Dnacio>30 Entonces
			Escribir "Error: Fecha inválida (Ese mes solo tiene 30 días)."
		FinSi
		SiNo
			Si Dnacio<1 O Dnacio>31 Entonces
				Escribir "Error: Fecha inválida (Ese mes solo tiene 31 días)."
			FinSi
		FinSi
	FinSi

// Calcular edad
	Edad <- Aactual - Anacio
	Si Mnacio > Mactual Entonces
		Edad <- Edad - 1
	SiNo
		Si Mnacio == Mactual Entonces
			Si Dnacio > Dactual Entonces
				Edad <- Edad - 1
			FinSi
		FinSi
	FinSi

// Mostrar resultado
	Si Edad > 0 Entonces
		Escribir "Tienes ", Edad, " años."
	SiNo
		Escribir "Error: Fecha inválida (naciste en el futuro)."
	FinSi
FinAlgoritmo

