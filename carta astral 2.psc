Algoritmo cartaastral
// Declaración de variables
	Definir nombre, pais, ascendente Como Cadena
	Definir dia, mes, anio, hora, minuto, mesca, diaca, añoca Como Entero
	
	// Entrada de datos
	Escribir "===== CALCULAR TU CARTA NATAL ASTROLÓGICA ====="
	Escribir "Ingrese su nombre: "
	Leer nombre
	
	Escribir "Ingrese su fecha de nacimiento"
	Escribir "Día (1-31): "
	Leer diaca
	Escribir "Mes (1-12): "
	Leer mesca
	Escribir "Año: "
	Leer añoca
	
	Escribir "Ingrese su hora de nacimiento"
	Escribir "Hora (0-23): "
	Leer hora
	Escribir "Minutos (0-59): "
	Leer minuto
	
	Escribir "Ingrese su país de nacimiento: "
	Leer pais
	Si ( Mes= 3 y Dia >= 21) O ( mesca= 4 y diaca <=19) Entonces
		Escribir "Tu signo es: Aries y tu elemento es el Fuego"
	SiNo
		Si ( mesca= 4 y diaca >= 20) O ( mesca= 5 y diaca <=20) Entonces
			Escribir "Tu signo es: Tauro y tu elemento es la Tierra"
		SiNo
			Si ( mesca= 5 y diaca >= 21) O ( mesca= 6 y diaca <=20) Entonces
				Escribir "Tu signo es: Geminis y tu elemento es el Aire"
			SiNo
				Si ( mesca= 6 y diaca >= 21) O ( mesca= 7 y diaca <=22) Entonces
					Escribir "Tu signo es: Cancer y tu elemento es el Agua"
				SiNo
					Si ( mesca= 7 y diaca >= 23) O ( mesca= 8 y diaca <=22) Entonces
						Escribir "Tu signo es: Leo y tu elemento es el Fuego"
					SiNo
						Si ( mesca= 8 y diaca >= 23) O ( mesca= 9 y diaca <=22) Entonces
							Escribir "Tu signo es: Virgo y tu elemento es la Tierra"
						SiNo
							Si ( mesca= 9 y diaca >= 23) O ( mesca= 10 y diaca <=22) Entonces
								Escribir "Tu signo es: Libra y tu elemento es el Aire"
							SiNo
								Si ( mesca= 10 y diaca >= 23) O ( mesca= 11 y diaca <=21) Entonces
									Escribir "Tu signo es: Escorpio y tu elemento es el Agua "
								SiNo
									Si ( mesca= 11 y diaca >= 22) O ( mesca= 12 y diaca <=21) Entonces
										Escribir "Tu signo es: Sagitario y tu elemento es el Fuego"
									SiNo
										Si ( mesca= 12 y diaca >= 22) O ( mesca= 1 y diaca <=19) Entonces
											Escribir "Tu signo es: Capricornio y tu elemento es la Tierra"
										SiNo
											Si ( mesca= 1 y diaca >= 20) O ( mesca= 2 y diaca <=18) Entonces
												Escribir "Tu signo es: Acuario y tu elemento es el Aire"
											SiNo
												Si ( mesca= 2 y diaca >= 19) O ( mesca= 3 y diaca <=20) Entonces
													Escribir "Tu signo es: Piscis y tu elemento es el Agua"
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Segun Hora Hacer
		0,1: Ascendente <- "Aries"
		2,3: Ascendente <- "Tauro"
		4,5: Ascendente <- "Géminis"
		6,7: Ascendente <- "Cáncer"
		8,9: Ascendente <- "Leo"
		10,11: Ascendente <- "Virgo"
		12,13: Ascendente <- "Libra"
		14,15: Ascendente <- "Escorpio"
		16,17: Ascendente <- "Sagitario"
		18,19: Ascendente <- "Capricornio"
		20,21: Ascendente <- "Acuario"
		22,23: Ascendente <- "Piscis"
	FinSegun
	// Proceso simulado (no se calculan posiciones astrológicas reales)
	Escribir "==============================================="
	Escribir "Datos ingresados para su Carta Astral:"
	Escribir "Nombre: ", nombre
	Escribir "Fecha de nacimiento: ", diaca, "/", mesca, "/", añoca
	Escribir "Hora de nacimiento: ", hora, ":", minuto
	Escribir "País de nacimiento: ", pais
	Escribir "Ascendente en: ", Ascendente
	Escribir "==============================================="
	
FinAlgoritmo
