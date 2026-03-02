Algoritmo trabajo_final

	Definir valido, Seguir Como Logico
	Definir nombre, apellido, ciudad Como Cadena
	Definir Mnacimiento, Dnacimiento, Anacimiento, opc, edad, a, b, c, suma, prome, i, intentosMenu, intentos Como Entero
	Definir fecha, diaA, mesA, anioA, horaN, minutoN Como Entero
	

	fecha=FechaActual()
    anioA=ConvertirANumero(Subcadena(ConvertirATexto(fecha),1,4))
    mesA=ConvertirANumero(Subcadena(ConvertirATexto(fecha),5,6))
    diaA=ConvertirANumero(Subcadena(ConvertirATexto(fecha),7,8))

	Escribir "Ingrese su nombre:" Sin Saltar
	Leer nombre
	Escribir "Ingrese su apellido:" Sin Saltar
	Leer apellido
	

	intentos <- 0
	Repetir
		Escribir "Bienvenido ", nombre, ", ahora ingrese su día, mes y año de nacimiento"
		Escribir "Día:" Sin Saltar
		Leer Dnacimiento
		Escribir "Mes:" Sin Saltar
		Leer Mnacimiento
		Escribir "Año:" Sin Saltar
		Leer Anacimiento
		
		valido <- Falso
		

		Si (Mnacimiento>=1 Y Mnacimiento<=12) Entonces
			Segun Mnacimiento Hacer
				1,3,5,7,8,10,12:
					Si (Dnacimiento>=1 Y Dnacimiento<=31) Entonces
						valido <- Verdadero
					FinSi
				4,6,9,11:
					Si (Dnacimiento>=1 Y Dnacimiento<=30) Entonces
						valido <- Verdadero
					FinSi
				2:
					Si ((Anacimiento MOD 4=0 Y Anacimiento MOD 100<>0) O (Anacimiento MOD 400=0)) Entonces
						Si (Dnacimiento>=1 Y Dnacimiento<=29) Entonces
							valido <- Verdadero
						FinSi
					SiNo
						Si (Dnacimiento>=1 Y Dnacimiento<=28) Entonces
							valido <- Verdadero
						FinSi
					FinSi
			FinSegun
		FinSi
		
	
		Si valido=Verdadero Entonces
			Si (Anacimiento<0 O Anacimiento>anioA) Entonces
				valido <- Falso
			FinSi
		FinSi
		

		Si (valido=Falso) Entonces
			intentos <- intentos+1
			Escribir "Fecha inválida. Intento ", intentos, " de 3."
		FinSi
	Hasta Que (valido=Verdadero) O (intentos=3)
	

	edad <- anioA - Anacimiento
	Si (Mnacimiento > mesA) Entonces
		edad <- edad - 1
	SiNo
		Si (Mnacimiento = mesA Y Dnacimiento > diaA) Entonces
			edad <- edad - 1
		FinSi
	FinSi
	

	intentosMenu <- 0
	Repetir
		Limpiar Pantalla
		Escribir "===== MENU PRINCIPAL ====="
		Escribir ""
		Escribir "1. Calcular edad"
		Escribir "2. Mostrar signo zodiacal"
		Escribir "3. Carta astral (hora y ciudad)"
		Escribir "4. Secuencia Fibonacci (con promedio y tablas)"
		Escribir "5. Salir"
		Leer opc
		
		Segun opc Hacer
			1:
				Limpiar Pantalla
				Si edad>0 Entonces
					Escribir nombre " Tienes ", edad, " años."
					Si edad MOD 2=0 Entonces
						Escribir "Tu edad es un número PAR."
					SiNo
						Escribir "Tu edad es un número IMPAR."
					FinSi
				SiNo
					Escribir "Error: Fecha inválida (naciste en el futuro)."
				FinSi
				Seguir <- Verdadero
			2:
				Limpiar Pantalla
				Escribir "=== SIGNO ZODIACAL ==="
				Si (Mnacimiento=3 Y Dnacimiento>=21) O (Mnacimiento=4 Y Dnacimiento<=19) Entonces
					Escribir nombre, " tu signo es Aries"
					Escribir "Tu elemento es Fuego"
					Escribir "Tu signo zodiacal es generalmente compatible con Leo, Sagitario "
				SiNo
					Si (Mnacimiento=4 Y Dnacimiento>=20) O (Mnacimiento=5 Y Dnacimiento<=20) Entonces
						Escribir nombre, " tu signo es Tauro"
						Escribir "Tu elemento es Tierra"
						Escribir "Tu signo zodiacal es generalmente compatible con Virgo, Capricornio "
					SiNo
						Si (Mnacimiento=5 Y Dnacimiento>=21) O (Mnacimiento=6 Y Dnacimiento<=20) Entonces
							Escribir nombre, " tu signo es Géminis"
							Escribir "Tu elemento es Aire"
							Escribir "Tu signo zodiacal es generalmente compatible con Acuario y Libra"
						SiNo
							Si (Mnacimiento=6 Y Dnacimiento>=21) O (Mnacimiento=7 Y Dnacimiento<=22) Entonces
								Escribir nombre, " tu signo es Cáncer"
								Escribir "Tu elemento es Agua "
								Escribir "Tu signo zodiacal es generalmente compatible con Piscis, Escorpio "
							SiNo
								Si (Mnacimiento=7 Y Dnacimiento>=23) O (Mnacimiento=8 Y Dnacimiento<=22) Entonces
									Escribir nombre, " tu signo es Leo"
									Escribir "Tu elemento es Fuego "
									Escribir "Tu signo zodiacal es generalmente compatible con Aries, Sagitario "
								SiNo
									Si (Mnacimiento=8 Y Dnacimiento>=23) O (Mnacimiento=9 Y Dnacimiento<=22) Entonces
										Escribir nombre, " tu signo es Virgo"
										Escribir "Tu signo zodiacal es generalmente compatible con Tauro, Capricornio "
										Escribir "Tu elemento es Tierra"
									SiNo
										Si (Mnacimiento=9 Y Dnacimiento>=23) O (Mnacimiento=10 Y Dnacimiento<=22) Entonces
											Escribir nombre, " tu signo es Libra"
											Escribir "Tu elemento es Aire"
											Escribir "Tu signo zodiacal es generalmente compatible con Acuario y Geminis "
										SiNo
											Si (Mnacimiento=10 Y Dnacimiento>=23) O (Mnacimiento=11 Y Dnacimiento<=21) Entonces
												Escribir nombre, " tu signo es Escorpio"
												Escribir "Tu elemento es Agua "
												Escribir "Tu signo zodiacal es generalmente compatible con Piscis, Cancer "
											SiNo
												Si (Mnacimiento=11 Y Dnacimiento>=22) O (Mnacimiento=12 Y Dnacimiento<=21) Entonces
													Escribir nombre, " tu signo es Sagitario"
													Escribir "Tu elemento es Fuego"
													Escribir "Tu signo zodiacal es generalmente compatible con mmmmmmmmmmmmmmmmmm "
												SiNo
													Si (Mnacimiento=12 Y Dnacimiento>=22) O (Mnacimiento=1 Y Dnacimiento<=19) Entonces
														Escribir nombre, " tu signo es Capricornio"
														Escribir "Tu elemento es Tierra"
														Escribir "Tu signo zodiacal es generalmente compatible con mmmmmmmmmmmmmmmmmm "
														
													SiNo
														Si (Mnacimiento=1 Y Dnacimiento>=20) O (Mnacimiento=2 Y Dnacimiento<=18) Entonces
															Escribir nombre, " tu signo es Acuario"
															Escribir "Tu elemento es Aire"
															Escribir "Tu signo zodiacal es generalmente compatible con Géminis y Libra "
														SiNo
															Si (Mnacimiento=2 Y Dnacimiento>=19) O (Mnacimiento=3 Y Dnacimiento<=20) Entonces
																Escribir nombre, " tu signo es Piscis"
																Escribir "Tu elemento es Agua "
																Escribir "Tu signo zodiacal es generalmente compatible con Cancer, Escorpio "
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
				Seguir <- Verdadero
			3:
				Limpiar Pantalla
				Escribir "=== CARTA ASTRAL ==="
				Escribir "Ingrese su ciudad de nacimiento:"
				Leer ciudad
				Escribir "Ingrese la hora de nacimiento (0-23):"
				Leer horaN
				Escribir "Ingrese el minuto de nacimiento (0-59):"
				Leer minutoN
				
				Segun horaN Hacer
					6,7: Escribir "Muy bien ", nombre, " tu ascendente es Aries"
					8,9: Escribir "Muy bien ", nombre, " tu ascendente es Tauro"
					10,11: Escribir "Muy bien ", nombre, " tu ascendente es Géminis"
					12,13: Escribir "Muy bien ", nombre, " tu ascendente es Cáncer"
					14,15: Escribir "Muy bien ", nombre, " tu ascendente es Leo"
					16,17: Escribir "Muy bien ", nombre, " tu ascendente es Virgo"
					18,19: Escribir "Muy bien ", nombre, " tu ascendente es Libra"
					20,21: Escribir "Muy bien ", nombre, " tu ascendente es Escorpio"
					22,23,0,1: Escribir "Muy bien ", nombre, " tu ascendente es Sagitario"
					2,3: Escribir "Muy bien ", nombre, " tu ascendente es Capricornio"
					4,5: Escribir "Muy bien ", nombre, " tu ascendente es Piscis"
					De Otro Modo: Escribir "Hora inválida."
				FinSegun
				Escribir "Lugar: ", ciudad
				Escribir "Hora: ", horaN, ":", minutoN
				Seguir <- Falso
			4:
				Limpiar Pantalla
				a <- 0
				b <- 1
				suma <- 0
				Escribir nombre, " tu secuencia Fibonacci es:"
				Para i<-1 Hasta edad Hacer
					Escribir a, " | " Sin Saltar
					suma <- suma+a
					c <- a+b
					a <- b
					b <- c
				FinPara
				Escribir ""
				Si edad>0 Entonces
					prome <- Redon(suma/edad)
					Escribir "El promedio es: ", prome
					
					Escribir "Tabla de multiplicar del promedio:"
					Para i<-1 Hasta 10 Hacer
						Escribir prome, " x ", i, " = ", prome*i
					FinPara
				SiNo
					Escribir "Edad inválida, no se puede calcular el promedio."
				FinSi
				Seguir <- Falso
			5:
				Escribir "Gracias por usar el programa, hasta pronto."
				Seguir <- Falso
			De Otro Modo:
				intentosMenu <- intentosMenu+1
				Escribir "Opción inválida. Intento ", intentosMenu, " de 3."
				Seguir <- Verdadero
		FinSegun
	Hasta Que (Seguir=Verdadero) O (intentosMenu=3)
	
	Si intentosMenu=3 Entonces
		Escribir "Demasiados intentos inválidos. Programa finalizado."
	FinSi
FinAlgoritmo
