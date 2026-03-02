Algoritmo sin_titulo
	Escribir " Programa para hallar el de varias figuras";
	Escribir "******************************************";
	Escribir "Escriba su nombre por favor:"
	Leer nombre;
	Escribir "******************************************";
	Escribir "Bienvenido(A) ", nombre, " a nuestro sisteama";
	Escribir "********************************************";
	Escribir "Por favor seleccione la opcion que desea realizar";
	Escribir "1: Hallar el area de un cuadrado";
	Escribir "2: Hallar el aera de un rectangulo";
	Escribir "3: Hallar el area de un triangulo";
	Escribir "4: Resolver la potencia de un numero";
	Leer Op;
	
	Si Op =1 Entonces
		Escribir "Dijite la medida de uno de los lados del cuadradro en centimetros"
		Leer L1;
		Escribir " Dijite la otra medida del cuadrado en centimetros";
		Leer L2;
		R= L1*L2
		Escribir "El área del cuadrado es: ", R, "cm";
	FinSi
	
	Si Op= 2  Entonces
		Escribir " Dijite la base del rectangulo en centimetros"
		Leer B;
		Escribir " Dijite la altura del rectangulo en centrimetros"
		Leer A;
		R=B*A
		Escribir "El area del rectangulo es: ", R, "cm"
		
	FinSi
	
	Si Op=3 Entonces
		Escribir "Dijite la base del triangulo en centimetros"
		Leer B;
		Escribir " Dijite la altura del triangulo en centimetros"
		Leer A;
		R=B*A/2
		Escribir " El area del triangulo es: " , R, "cm"
	FinSi
	
	Si Op=4 Entonces
		Escribir " Dijite el numero a se potenciado" 
		Leer num1;
		Escribir " Dijite el numero de la potencia"
		Leer num2;
		R=num1^num2;
		Escribir " El resultado de la potencia es: " , R;
	FinSi
FinAlgoritmo
