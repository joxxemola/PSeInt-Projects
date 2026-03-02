Algoritmo GestiónNotas
	//1.Solicitar y validar cant estudiantes >= 1
	Definir ingreso Como Logico
	Definir contar Como Entero
	ingreso=Verdadero
	CantEstudiante(cantest, error)
	si error==3 Entonces
		Mensajeerror
	SiNo
		Escribir "SISTEMA DE GESTIÓN DE NOTAS"
		
		//2.Solicitar y Validar notas (0 a 5)
		ValidarNotas(nota1, nota2, nota3, nombre, error)
		si error=3 Entonces
			Mensajeerror
			
		SiNo
			Esperar 1 Segundos
			Limpiar Pantalla
			Escribir "Estudiante: " Mayusculas(nombre)
			Escribir "Primera nota (0-5): " nota1
			Escribir "Segunda nota (0-5): " nota2
			Escribir "Tercera nota (0-5): " nota3
			calcularpromedio(nota1,nota2,nota3,promedio)
			estado=verificaraprobado(promedio)
			Escribir "Su promedio es: " redon(promedio) " Usted: " estado " Su Mejor Nota Es De: " mejornota
			
		FinSi
		
		//ESTADÍSTICAS FINALES
		//MEJOR ESTUDIANTE
	FinSi
FinAlgoritmo

//Subproceso de ingreso cantidad de estudiantes
SubProceso  CantEstudiante(cantest Por Referencia, error Por Referencia)
	Definir ingreso Como Logico
	ingreso=Verdadero
	Mientras ingreso y error<3 hacer
		Escribir "Ingrese la cantidad de estudiantes a evaluar: " Sin Saltar
		leer cantest
		Si cantest<1 Entonces
			Escribir "La cantidad ingresada no es valida"
			Escribir "Como minimo la cantidad debe ser de un estudiante"
			error=error+1
		SiNo
			Escribir "Bienvenido"
			ingreso=Falso
		FinSi
	FinMientras
FinSubProceso

//SubProceso Validar Notas
SubProceso  ValidarNotas(nota1 Por Referencia, nota2 Por Referencia, nota3 Por Referencia, nombre Por Referencia, error Por Referencia)
	Definir not1,not2,not3 Como Real
	Definir ingreso Como Logico
	ingreso=Verdadero
	Escribir "Ingrese su Nombre: " Sin Saltar
	leer nombre
	Mientras ingreso y error<3 hacer
		Escribir "Ingrese la Nota1: " Sin Saltar
		leer not1
		Escribir "Ingrese la Nota2: " Sin Saltar
		leer not2
		Escribir "Ingrese la Nota3: " Sin Saltar
		leer not3
		Si (not1>=0 y not1<=5) Y (not2>=0 y not2<=5) Y (not3>=0 y not3<=5) Entonces
			Escribir "Notas Ingresadas Correctamente"
			nota1=not1
			nota2=not2
			nota3=not3
			ingreso=Falso
		SiNo
			Escribir "Las notas ingresadas no son valida"
			Escribir "Alguna nota no cumple el rango establecido (0 a 5)"
			error=error+1
		FinSi
	FinMientras
FinSubProceso


//SubProceso mensaje de error para finalizar
SubProceso Mensajeerror
	Esperar 1 Segundos
	Limpiar Pantalla
	Escribir " X Lo sentimos, se han detectado múltiples intentos fallidos."
	Escribir " :( No podemos continuar. Intenta más tarde o contacta al soporte"
FinSubProceso

//SubProceso para calcular promedio
SubProceso calcularpromedio(nota1 Por Valor, nota2 Por Valor, nota3 Por Valor, promedio Por Referencia)
	promedio=(nota1+nota2+nota3)/3
FinSubProceso

//subproceso para verificar aprobado o no aprobado
SubProceso estado=verificaraprobado(prom)
	si prom>=3 Entonces
		estado="APROBÓ"
	SiNo
		estado="REPROBÓ"
	FinSi
FinSubProceso

//SubProceso para sacar la nota mayor









