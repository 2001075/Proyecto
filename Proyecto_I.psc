//Ejercicio 1.
//¿Siguiendo la prioridad de operadores, convierta a expresión matemática,
//resuelva e indique en cuál tipo de variable almacenará el resultado de las
//siguientes expresiones:
//	(5 + 3 * 2) + 9 > 3 * 5 * 14 % 3
//	2 (4 ? 10 + 8)/2 36 *(1/2)
//	260 / 12 + 54 % 3 ? 85 % 7
//	(48 < 2 * 3) | | (2 * 7 < 12)
//	((8 > 2) | | (932 < 23) ) & 4 == 2
Funcion expresion_matematica
	definir resultado2,resultado3 como real
	definir resultado1,resultado4,resultado5 Como logico
	
	resultado1 <- (5 + 3 * 2) + 9 > 3 * 5 * 14 % 3 
	resultado2 <- 2*(4 - 10 + 8)/2*36 *(1/2)
	resultado3 <- 260 / 12 + 54 % 3 - 85 % 7
	resultado4 <- (48 < 2 * 3) | (2 * 7 < 12)
	resultado5 <- ((8 > 2) | (932 < 23) ) & 4 == 2
	
	escribir "el resultado de la expresion 1 es: ", resultado1
	escribir "el resultado de la expresion 2 es: ", resultado2
	escribir "el resultado de la expresion 3 es: ", resultado3
	escribir "el resultado de la expresion 4 es: ", resultado4
	escribir "el resultado de la expresion 5 es: ", resultado5
	
FinFuncion



//Ejercicio 2.
//Dados dos (2) números calcule la suma, resta, multiplicación, división y módulo.
FUNCION Calculadora_suma_resta_multiplicacion_division_modulo
	definir num1,num2,suma,resta,modulo como entero;
	definir division,multiplicacion como real;
	num1 = 0
	num2 = 0
	
	escribir "Ingrese el primer numero";
	leer num1;
	escribir "Ingrese el segundo numero";
	leer num2;
	
	suma = num1 + num2;
	resta = num1 - num2;
	multiplicacion= num1 * num2;
	division = num1 / num2;
	modulo = num1 % num2;
	
	escribir "suma", suma;
	escribir "resta", resta;
	escribir "multiplicacion",multiplicacion;
	escribir "division", division;
	escribir "modulo",modulo ;
FinFuncion


//Ejercicio 3.
//Dados tres (3) números, Hacer una aplicación que calcule la resolvente.
funcion Calculadora_de_resolvente
	
	Definir a, b, c, discriminante, x1, x2 Como Real
	
	Escribir "Ingrese el coeficiente a:"
	Leer a
	
	Escribir "Ingrese el coeficiente b:"
	Leer b
	
	Escribir "Ingrese el coeficiente c:"
	Leer c
	
	discriminante <- b^2 - 4*a*c
	
	Si discriminante > 0 Entonces
		x1 <- (-b + Raiz(discriminante)) / (2*a)
		x2 <- (-b - Raiz(discriminante)) / (2*a)
		Escribir "Las raíces son x1 =", x1, "y x2 =", x2
	Sino 
		Si discriminante = 0 Entonces
			x1 <- -b / (2*a)
			Escribir "La ecuación tiene una raíz doble en x =", x1
		Sino
			Escribir "La ecuación no tiene soluciones reales."
		finsi
	FinSi
FinFuncion


//ejercicio 4
//Dados dos (2) lados de un triángulo en cm, calcular la hipotenusa del mismo.

funcion Hipotenusa_y_lados_Triangulos
	
	Definir cateto1, cateto2, hipotenusa Como Real
	
	Escribir "Ingrese la longitud del primer cateto en cm: "
	Leer cateto1
	
	Escribir "Ingrese la longitud del segundo cateto en cm: "
	Leer cateto2
	
	hipotenusa <- raiz(cateto1^2 + cateto2^2)
	
	Escribir "La longitud de la hipotenusa es: ", hipotenusa, " cm"
	
FinFuncion


//ejercicio 5 
//Dado un (1) número, imprimir 0 si es par y 1 si es impar
funcion _0_par_1_impar
	
	Definir numero Como Entero
    Escribir "Ingresa un número: "
    Leer numero
    Si numero % 2 = 0 Entonces
        Escribir "El número es par: 0"
    SiNo
        Escribir "El número es impar: 1"
    FinSi
	
FinFuncion


//ejercicio 6
//Dado un número binario de cuatro dígitos imprimir su bit de paridad. El bit de
//paridad es 1 si el número de bits 1 es impar y 0 en caso contrario.
funcion número_binario
	Definir x,n,bit Como Entero
	Definir binario Como Caracter
	Escribir "ingresa 4 digitos"
	leer n 
	binario = ConvertirATexto(n)
	n= Longitud(binario)
	x=0
	bit=0
	Mientras n>0 Hacer
		si Subcadena(binario,n,n) == "1" Entonces
			bit= bit+2^x 
		FinSi
		n=n-1
		x=x+1
	FinMientras
	Escribir "el bit es :",bit
	
	
FinFuncion


//Ejercicio 7.
//Dado un (1) número de cuatro (4) dígitos imprimirlo por separado en unidades,decenas,
//centenas y unidades de mil.
funcion unidades_decenas
	definir n,unidades,decenas,centenas como entero
	escribir "Ingrese un numero"
	leer n
	
	si n > 99 y n < 1000 Entonces
		unidades = n mod 10
		n = trunc(n/10) 
		decenas = n mod 10
		n = trunc(n/10)
		centenas = n mod 10 
		
		escribir "El numero tiene:"
		Escribir "Centenas:", centenas
		Escribir "Decenas:", decenas
		Escribir "Unidades:", unidades	
	sino 
		escribir "Ingrese un numero de tres cifras:"
		
	FinSi
	
FinFuncion

//Ejercicio 8
//Dado un carácter indicar si es un digito o una consonante o un carácter especial.
funcion caracteres_
	Definir caracter Como Caracter
	
    Escribir "Ingrese un caracter: "
    Leer caracter
	
    Si caracter >= "0" Y caracter <= "9" Entonces
        Escribir "El caracter ingresado es un dígito"
    Sino
		Si (caracter >= "a" Y caracter <= "z") O (caracter >= "A" Y caracter <= "Z") Entonces
			Escribir "El caracter ingresado es una consonante"
		Sino
			Escribir "El caracter ingresado es un carácter especial"
		FinSi
	finsi
FinFuncion

//Ejercicio 9
//Dado dos caracteres indicar si el primer carácter es igual, mayor o menor que el segundo
funcion caracter_igualOmayor
	Definir caracter1, caracter2 como Caracter
	
	Escribir "Ingrese el primer caracter: "
	Leer caracter1
	
	Escribir "Ingrese el segundo caracter: "
	Leer caracter2
	
	Si caracter1 = caracter2 Entonces
		Escribir "El primer caracter es igual al segundo"
	Sino
		Si caracter1 > caracter2 Entonces
			Escribir "El primer caracter es mayor que el segundo"
		Sino
			Escribir "El primer caracter es menor que el segundo"
		finsi
	FinSi
FinFuncion


//Dado dos caracteres indican si el primer carácter es igual, mayor o menor que el segundo
//funcion mayuscula_minuscula
funcion mayuscula_minuscula
	Definir frase Como Caracter
	definir x Como Entero
	
	Escribir "Ingrese una frase:"
	Leer frase
	escribir "Convertir a"
	escribir "1 = MAYUSCULA"
	escribir "2 = minuscula"
	leer x
	
	si x > 0 y x < 3 entonces 
		si x == 1 Entonces
			escribir "el texto en MAYUSCULAS es:",Mayusculas(frase)
		sino 
			escribir "el texto en minusculas es:",Minusculas(frase)
		FinSi
	sino 
		escribir "Ingrese una opcion correcta"
	FinSi
	FinFuncion



Funcion AñoBisiesto
	Definir año como entero 
	Escribir "Ingrese un año:"
	Leer año 
	Si año mod 4 == 0 Entonces
		Si año mod 100 == 0 Entonces
			Si año mod 400 == 0 Entonces
				Escribir " El año " , año , " es bisiesto "
			SiNo
				Escribir " El año " , año , " no es bisiesto "
			Fin Si
		SiNo
			Escribir " El año " , año , " es bisiesto "
		Fin Si
	SiNo
		Escribir " El año " , año , " no es bisiesto "
	Fin Si	
FinFuncion
Funcion NumeroCapicua
	Definir n,a,b como entero 
	Escribir "Dame un numero de 3 digitos"
	Leer n
	a = trunc (n/100)
	b = n mod 10
	Escribir a
	Escribir b 
	Si a == b Entonces
		Escribir "El numero ",n, " es un numero capicua"
	SiNo
		Escribir "El numero ",n, " no es un numero capicua"
	Fin Si
FinFuncion
Funcion Cambio_Segun
	Definir d,h,m,s como real 
	Escribir "Ingrese un valor en minutos "
	Leer m 
	s = m * 60
	d = m / 1440
	h = m / 60
	Escribir m, " Minutos son: "
	Escribir s, " Segundos "
	Escribir d, " Dias "
	Escribir h, " Horas "
FinFuncion
Funcion Primeromayor_Segundomayor
	Definir n1,n2,n3 como entero 
	Escribir "Ingrese el primer numero "
	Leer n1
	Escribir "Ingrese el segundo numero "
	Leer n2 
	Escribir "Ingrese el tercer numero "
	Leer n3
	Si (n1 > n2 y n1 > n3) Entonces
		Escribir "El primer numero es mayor "
	SiNo
		Si (n2 > n1 y n2 > n3) Entonces
			Escribir "El segundo numero es mayor "
		SiNo
			Si (n3 > n1 y n3 > n2) Entonces
				Escribir "El tercer numero es mayor "
			SiNo
				Escribir "Los numeros son iguales "
			Fin Si
		Fin Si
	Fin Si
FinFuncion
Funcion Cal_valor_parquin
	Definir hora_entrada,hora_salida,minuto_entrada,minuto_salida,total_horas Como Entero
	Definir monto como real 
	Escribir "Ingresa la hora de entrada"
	leer hora_entrada
	Escribir "Ingresa los minutos de entrada"
	leer minuto_entrada
	Escribir "Ingresa la hora de salida"
	leer hora_salida
	Escribir "Ingresa los minutos de salida"
	leer minuto_salida
    Si hora_entrada > 24 o hora_salida > 24 o minuto_entrada > 60 o minuto_salida > 60 Entonces
		Escribir "La hora es incorrecta"
	SiNo
		Si hora_entrada > hora_salida Entonces
			Escribir "Ingrese la hora de salida correctamente"
		SiNo
			Si hora_entrada == hora_salida Entonces
				Si minuto_salida > minuto_salida Entonces
					total_horas = 1
					monto = 3.50
				SiNo
					Escribir "Ingresar la hora de salida"
				Fin Si
			SiNo
				total_horas = hora_salida - hora_entrada
				Si minuto_salida > minuto_entrada  Entonces
					total_horas = total_horas + 1 
					monto = ((total_horas - 1) * 5.00) + 3.50
				SiNo
					monto = (total_horas - 1) * 5.00 + 3.50
				Fin Si
			Fin Si
		Fin Si
		Escribir "El monto a pagar por ",total_horas," horas es: $",monto
	Fin Si	
FinFuncion
Funcion  IndicedeM
	Definir peso,estatura,imc como real
	Definir masa como carácter
	Escribir "Ingresa tu peso en kilogramos"
	Leer peso
	Escribir "Ingresa tu estatura en metros"
	Leer estatura
	imc = peso / (estatura * estatura)
	Si imc < 18.5 Entonces
		masa = "bajo peso"
	SiNo
		Si imc <= 24.9 Entonces
			masa = "peso normal"
		SiNo
			Si imc <= 29.9  Entonces
				masa = "sobrepeso"
			SiNo
				masa = "Obesidad"
			Fin Si
		Fin Si
	Fin Si
	Escribir "Tu índice de masa es: ",imc," tienes ",masa
FinFuncion
Funcion DiasPasados
	Definir mes,dia,tiempo como entero 
	Escribir sin saltar "Nro de mese: "
	Leer mes
	Escribir sin saltar "Nro de dias: "
	Leer dia
	tiempo = ((( mes-1 ) *30 ) +dia )
	Escribir ""
	Escribir "Los dias transcurridos son: " ,tiempo
FinFuncion
Funcion Mes_Año
	Definir n Como Entero
	Escribir "Ingresa un número"
	Leer n 
	Segun n hacer
		
		1:
			Escribir "El número 1 corresponde al mes de enero"
		2:
			Escribir "El número 2 corresponde al mes de febrero"
		3:
			Escribir "El número 3 corresponde al mes de marzo"
		4:
			Escribir "El número 4 corresponde al mes de abril"
		5:
			Escribir "El número 5 corresponde al mes de mayo"
		6:
			Escribir "El número 6 corresponde al mes de junio"
		7:
			Escribir "El número 7 corresponde al mes de julio"
		8:
			Escribir "El número 8 corresponde al mes de agosto"
		9:
			Escribir "El número 9 corresponde al mes de septiembre"
		10:
			Escribir "El número 10 corresponde al mes de octubre"
		11:
			Escribir "El número 11 corresponde al mes de noviembre"
		12:
			Escribir "El número 12 corresponde al mes de diciembre"
			
		De Otro Modo:
			Escribir "No existe mes para ese número"
	FinSegun  		
FinFuncion
Funcion mayoromenor
	Definir cantidad, descuento Como Real
	Escribir "Escribe la cantidad comprada"
	Leer cantidad 
    descuento = 0
    si cantidad > 1000 Entonces
		descuento = cantidad * .20
	FinSi
	Escribir "La cantidad a pagar ya con el descuento aplicado es: $",cantidad - descuento
	Escribir "El descuento aplicado es: $",descuento
FinFuncion
Funcion  Operadores
	Definir a,b,x como real
	Escribir "Escribe dos numeros"
	leer a,b
	x = 0
	Mientras x <> 5 hacer
		escribir "Elige una opcion "
		Escribir "1 = suma"
		Escribir "2 = resta"
		Escribir "3 = multiplicacion "
		Escribir "4 = division"
		Escribir "5 = salir"
		leer x
		
		segun x
			1:
				Escribir "La suma de ",a," + ",b," = ",a+b
			2:
				Escribir "La resta de ",a," - ",b," = ",a-b
			3:
				Escribir "La multiplicacion de ",a," x ",b," = ",a*b
			4:
				Escribir "La division de ",a," / ",b," = ",a/b
			De Otro Modo:
				x = 5
		FinSegun
	FinMientras
FinFuncion

//1:Dado un numero entero N, calcular e informar al usuario cuantos dÌgitos tiene dicho numero.

//BOSQUEJO: pide calcular cuantos digitos tiene dicho numero.

Funcion Ejercicio1
	definir num como caracter
	definir long como entero
	Escribir "Dado un numero entero N, calcular e informar al usuario cuantos digitos tiene dicho numero."
	Escribir "Ingrese un numero"
	Leer num
	
	//Al ingresar el numero lo unico que se hace es sacar la longitud y se pone la cantidad de digitos que tiene
	
	long <- longitud(num)
	escribir "El numero ingresado ", num , " tiene ", long ," digitos";
FinFuncion



//2:Dado un numero, determine si es capicua.

//Nota: un numero capicua es aquel que se lee igual hacia adelante que hacia atras

//BOSQUEJO: determinar si un numero es capicua

funcion Ejercicio2
	Definir num,inversa Como Caracter
	Definir a,b,i Como Entero
	
	Escribir "Dado un numero entero cuya cantidad de digitos es igual a 5, determine si capicua"
	Escribir "Ingrese el numero de 5 digitos"
	leer num
	
	inversa="";
	
	//Se saca la longitus del numero
	
	b=Longitud(num)
	
	//Se hace un proceso repetitivo el cual ira verificando numero por numero desde la posicion 0 hasta la -1 (que es el final)
	
	para i=b Hasta 0 Con Paso -1 Hacer
		inversa=inversa+Subcadena(num,i,i)
	FinPara
	
	Escribir inversa
	
	//si el numero inverso es igual al numero ingresado entonces el numero es escapicua
	
	si num=inversa Entonces
		Escribir "El numero: ",num," es es capicua";
	SiNo
		Escribir "El numero: ",num," no es capicua";
	FinSi
	
FinFuncion



Funcion Ejercicio3
//	Se solicita al usuario un número, luego muestra todos los divisores de ese número en pantalla. 
	//   Utiliza un bucle "Para" para iterar desde 1 hasta el número ingresado, verificando si el 
	//   número es divisible por cada valor del bucle y mostrando los divisores correspondientes.
	
	Definir num, divisor Como Entero
	Escribir "Ejercicio 3 Escribir un algoritmo que presente los divisores de un numero"
	
	Escribir "Ingrese un número:"
	Leer num
	
	Escribir "Los divisores de ", num, " son:"
	
	Para divisor <- 1 Hasta num Hacer
		Si num MOD divisor = 0 Entonces
			Escribir divisor
		FinSi
	FinPara
FinFuncion



Funcion Ejercicio4
	//  Hacemos un cliclo repetitivo en el cual vamos a presentar la suma de los divisores de dicho numero	
//	Se utiliza un bucle "Para" para iterar desde 1 hasta el número ingresado (num) con un paso de 1. 
	//  Dentro del bucle, se verifica si num es divisible por el valor actual de divisores utilizando 
	//  el operador módulo (mod). Si es divisible (es decir, el residuo de la división es 0), se suma el valor de divisores a suma.
	
	
	Definir num, divisores, suma Como Real
	Escribir "Ejercicio 4 Escribir un algoritmo que presente la suma de los divisores de un numero"
	Escribir "Ingrese un numero "
	Leer num;
	
	Para divisores <- 1 Hasta num Con Paso 1 Hacer
		si num mod divisores = 0 Entonces
			suma <- suma + divisores
		FinSi
	Fin Para
	
	Escribir "La suma de los divisores de ", num, " es de : ", suma;
FinFuncion


Funcion Ejercicio5
	
	//   Después de leer el número, se utiliza un bucle "Para" para encontrar los divisores del número ingresado. 
	//   Si un número es un divisor, se incrementa el contador "c" en 1. Al final del bucle, se muestra en pantalla 
	//   la cantidad de divisores encontrados, almacenada en "c".
	Definir num, divisores, c Como Real
	Escribir "Escribir un algoritmo que presente la cantidad de los divisores de un numero"
	Escribir "Ingrese un numero"
	Leer num;
	
	Limpiar Pantalla
	
	Escribir "Los cantidad de divisores de ",num,":";
	
	//Se hace un ciclo repetitivo en el cual se van sacando los divisores
	
	Para divisores <- 1 Hasta num Con Paso 1 Hacer
		si num mod divisores = 0 Entonces
			
			//Agregamos un contador para sacar la cantidad de divisores que tiene dicho numero ingresado
			
			c <- c + 1
		FinSi
	Fin Para
	
	Escribir c
FinFuncion



Funcion Ejercicio6
	
	//   Se solicita al usuario que ingrese el número. Luego, se inicializa la variable "suma" en 0. A continuación, se 
	//   utiliza un bucle "Para" para encontrar los divisores del número ingresado (desde 1 hasta num-1). Si un número es un divisor, se suma a la variable "suma".
//	 Después de completar el bucle, se verifica si la suma de los divisores es igual al número ingresado (num). 
	//   Si es igual, se muestra en pantalla que el número es perfecto. De lo contrario, se muestra que el número no es perfecto.
	
	Definir suma,num,divisores Como Entero;
	escribir "Escribir un algoritmo que indique si un numero es perfecto"
	escribir "Nota: un numero es perfecto cuando la suma de los divisores del numero incluido el 1 y " Sin Saltar
	escribir "excluido el propio n?mero es igual al numero"
	escribir "Ejemplo: num -> 6: los divisores del 6 son: 1+2+3=6"
	
	Escribir "Ingrese el numero";
	Leer num
	
	suma <- 0
	
	//Se sacan los divisores y se los van sumando
	
	Para divisores <- 1 Hasta num-1 Con Paso 1 Hacer
		si num mod divisores = 0 Entonces
			suma <- suma + divisores
		FinSi
	FinPara;
	
	//Si la suma de todos sus divisores es igual al numero ingesado entonces el numero es perfecto
	
	si suma == num Entonces
		Escribir "El numero ", num, " es perfecto"
	SiNo
		Escribir "El numero ", num, " no es perfecto"
	FinSi	
FinFuncion



Funcion Ejercicio7
	
	//Nota: Un numero primo es aquel que solo es divisible por 1(uno) y por el mismo.
	
	// 	 Se solicita al usuario que ingrese el número y se inicializa el contador en 0. 
	//   Luego se utiliza un bucle Para para iterar desde 1 hasta el número ingresado (Num). Dentro del bucle, se 
	//   verifica si el número es divisible por i utilizando el operador módulo (mod). Si el residuo de la división es 0, 
	//   se incrementa el contador en 1.
	//   Después de completar el bucle, se verifica si el contador es igual a 2. Si es así, significa que el número tiene exactamente 
	//   dos divisores (1 y el número en sí mismo) y se muestra en pantalla que es un número primo. De lo contrario, 
	//   se muestra en pantalla que no es un número primo.
	
	Definir i,n,c Como Entero
	
	Escribir "Dado un numero N determinar si es un numero primo."
	escribir "Nota: Un numero primo es aquel que solo es divisible por 1(uno) y por el mismo"
	
	definir Num Como entero;
	
	escribir "digite un numero";
	
	leer Num;
	
	contador = 0;
	
	para i<-1 Hasta Num con paso 1 Hacer
		si Num mod i = 0 Entonces
			contador <- contador + 1;
		FinSi
	FinPara
	
	si contador = 2 Entonces
		escribir "es un numero primo:",N;
	SiNo
		Escribir "no es un numero primo:",N;
	FinSi
FinFuncion



//8:Construya un programa que dado un valor entero N, haga el c·lculo de la funcion factorial utilizando estructuras iterativas.

//BOSQUEJO:

//	 Este código calcula el factorial de un número entero ingresado por el usuario utilizando una estructura iterativa (bucle "Para"). 
//   Después de leer el valor "N", se inicializa la variable "factorial" en 1. Luego, se utiliza un bucle "Para" para multiplicar "N" por 
//   cada valor de "i" desde 1 hasta "N" y actualizar el valor de factorial en cada iteración.
//   Al finalizar el bucle, se muestra en pantalla el resultado del cálculo del factorial almacenado en la variable "factorial".


Funcion Ejercicio8
	definir N, factorial Como Entero;
	
	Escribir "Construya un programa que dado un valor entero N, haga el calculo de la funcion factorial utilizando estructuras iterativas."
	escribir "digite un valor"
	
	leer N;
	
	factorial <- 1;
	
	para i<- 1 hasta N con paso 1 hacer 
		factorial <- N * i;
	FinPara
	
	Escribir "el factorial es:",factorial;
	
FinFuncion




//9: Dado un numero entero N que representa una contrasena y asumiendo que una

//   Se utiliza un bucle Mientras para repetir la solicitud de ingreso de la contraseña hasta que se ingrese una contraseña con una 
//   longitud de 10 dígitos o más.
//   Dentro del bucle, se lee la contraseña ingresada y se calcula su longitud utilizando la función Longitud. Si la longitud de 
//   la contraseña es menor a 10, se muestra un mensaje indicando que la contraseña debe tener al menos 10 dígitos.
//   Cuando se ingresa una contraseña con 10 dígitos, el bucle se termina y se muestra en pantalla un mensaje indicando que se ha 
//   ingresado una contraseña segura.

Funcion Ejercicio9
	
	Definir contra Como Cadena;
	Definir longContra Como Entero;
	
	Escribir "Dado un numero entero N que representa una contrasena";
	Escribir "Contrasena de 10 digitos";
	
	//Se inicia con un ciclo repetitivo
	
	Mientras longContra < 10 Hacer
		Escribir "Ingrese una contrasena:";
		Leer contra
		
		//Se saca la longitud de la contraseÒa ingresada
		
		longContra = Longitud(contra)
		
		//si tiene menos de 10 digitos se le pedira que ingrese otra nuevamente
		
		Si longContra < 10 Entonces
			Escribir "La contrasena tiene que tener minimo 10 digitos para ser segura";
		Fin Si
		
	Fin Mientras
	
	//El ciclo termina cuando se ingresa la contraseÒa con 10 digitos
	
	Escribir "Ha ingresado una contrasena segura";
FinFuncion





//10:Dada una secuencia de numeros terminada en cero (0), elaborar un algoritmo que informe
//al usuario que valor tiene el numero mayor y que valor tiene el numero menor, sin contar el cero (0).

Funcion Ejercicio10
	
	//   El usuario ingresar una secuencia de números, finalizada con un 0. Luego, encuentra y muestra el número mayor y el número menor 
	//   de la secuencia, excluyendo el 0.
//	 Se inicializan las variables nmayor y nmenor con el primer número ingresado. Luego, se utiliza un bucle Mientras para repetir 
	//   el proceso de lectura de números hasta que se ingrese un 0. Dentro del bucle, se comparan los números ingresados con las 
	//   variables nmayor y nmenor, y se actualizan si es necesario.
	//   Al finalizar el bucle, se muestran en pantalla el número mayor y el número menor encontrados
	
	Definir num,nmayor,nmenor Como Entero;
	
	Escribir "Dada una secuencia de numeros terminada en cero (0), elaborar un algoritmo que";
	Escribir "informe al usuario que valor tiene el numero mayor y que valor tiene el numero menor, sin contar el cero (0).";
	Escribir ""
	Escribir "Ingrese un numero (0 para terminar):";
	leer num
	
	nmayor = num
	nmenor = num
	
	Mientras num<> 0 Hacer
		si num > nmayor Entonces
			nmayor = num
		FinSi
		
		si num< nmenor Entonces
			nmenor=num
		FinSi
		
		Escribir "Ingrese un numero (0 para terminar):";
		leer num;
	FinMientras
	
	Escribir "El numero mayor es: ", nmayor;
	Escribir "El numero menor es: ", nmenor;
	
FinFuncion




Funcion Ejercicio11
	
	//   Se tiene una secuencia de enteros terminada en cero, que corresponde a la edad, peso y
	//   estatura de una muestra de hombres y mujeres mayores de 18 aÒos. Con base en dicha
	//   secuencia se desea realizar un estudio a fin de conocer:
	
//	Edad promedio de todas las personas en la muestra.
//	Peso promedio de todas las personas en la muestra.
//	Estatura promedio de todas las personas en la muestra.
//	Cuantas personas hay con edad entre los 18 y 25 anos.
//	Cuantas personas son mayores a 36 anos.
//	Cual es el promedio de peso de las personas con edades entre 18 y 35 anos.
	
	Definir edad, peso, estatura, suma_edad, suma_peso, suma_estatura, contador18_25, contadormayor_36, sumapeso18_35, promedio_edad, promedio_peso, promedio_estatura, promedio_peso18_35 como reales;
	
	Definir totalPersonas como entero;
	
	totalPersonas = 0;
	contador18_25 = 0
	contadormayor_36 = 0
	sumapeso18_35 = 0;
	suma_edad = 0;
	suma_peso = 0;
	suma_estatura = 0;
	
	Escribir "Digite la edad (0 para terminar):";
	Leer edad;
	
	Mientras edad <> 0 hacer
		Escribir "Digite el peso:";
		Leer peso;
		
		Escribir "Ingrese la estatura:";
		Leer estatura;
		
		// Cuantas personas hay con edad entre los 18 y 25 aÒos.
		
		Si edad >= 18 y edad <= 25 entonces
			contador18_25 = contador18_25 + 1;
		Fin Si
		
		// Cuantas personas son mayores a 36 aÒos.
		
		Si edad > 36 entonces
			contadormayor_36 = contadormayor_36 + 1;
		Fin Si
		
		// Cual es el promedio de peso de las personas con edades entre 18 y 35 aÒos.
		
		Si edad >= 18 y edad <= 35 entonces
			sumapeso18_35 = sumapeso18_35 + peso;
		Fin Si
		
		// Edad promedio de todas las personas en la muestra.
		
		// Peso promedio de todas las personas en la muestra.
		
		// Estatura promedio de todas las personas en la muestra.
		
		totalPersonas = totalPersonas + 1;
		suma_edad = suma_edad + edad;
		suma_peso = suma_peso + peso;
		suma_estatura = suma_estatura + estatura;
		
		Escribir "Digite la edad (0 para terminar):";
		Leer edad;
		
	Fin Mientras
	
	// Calcular el promedio
	
	promedio_edad = suma_edad / totalPersonas;
	promedio_peso = suma_peso / totalPersonas;
	promedio_estatura = suma_estatura / totalPersonas;
	
	// Comprobar si existen personas con edades entre 18 y 35 para evitar la divisiÛn por cero.
	
	Si contador18_25 > 0 entonces
		promedio_peso18_35 = sumapeso18_35 / contador18_25;
	Sino
		promedio_peso18_35 = 0;
	Fin Si
	
	Escribir "Edad promedio: ", promedio_edad
	Escribir "Peso promedio: ", promedio_peso;
	Escribir "Estatura promedio: ", promedio_estatura;
	Escribir "Cantidad de personas entre 18 y 25 anos: ", contador18_25;
	Escribir "Cantidad de personas mayores a 36 anos: ", contadormayor_36;
	Escribir "Promedio de peso de entre 18 y 35 anos: ", promedio_peso18_35
FinFuncion




//12: Construye un algoritmo que calcule e imprima la tabla de multiplicar, desde la tabla del 1 hasta la del 10.

//   Permite generar la tabla de multiplicar del 1 al 10. 
//   El primer bucle "Para" se encarga de iterar del 1 al 10 para generar cada tabla. Dentro de este bucle, hay otro bucle 
//   "Para" que itera del 1 al 10 para calcular y mostrar cada multiplicación de la tabla correspondiente. 
//   Después de imprimir la tabla completa, se agrega una línea en blanco para separar las tablas.

Funcion Ejercicio12
	
	//Se crea un Algoritmo con dos ciclos repetitivo en el cual se van haciendo las tablas de multiplicar 
	
	Definir contuno,contdos,resultado Como Entero;
	
	Escribir "Construye un algoritmo que calcule e imprima la tabla de multiplicar, desde la tabla del 1 hasta la del 10.";
	
	Para contuno = 1 hasta 10 hacer
		
		//el contador uno va a ir aumentando hasta el 10 y se va a ir creando la tabla del 1 al 10
		
		Escribir "Tabla de multiplicar del ", contuno, ":"
		
		Para contdos = 1 hasta 10 hacer
			resultado = contuno * contdos
			Escribir contuno, " x ", contdos " = ", resultado
		FinPara
		
		Escribir ""
		
	FinPara
FinFuncion




//	Ejercicio 13. Escribir un algoritmo que multiplique dos n?meros por medio de sumas sucesivas.

Funcion Ejercicio13
	
	//   Se ingresan dos números (num1 y num2). Luego, se inicializa la variable sumaP como 0. A continuación, se 
	//   utiliza un bucle Para para iterar desde 1 hasta num1. Dentro del bucle, se realiza la suma acumulativa de num2 
	//   en la variable sumaP. Finalmente, se muestra el resultado de la suma en la pantalla.
	
	Definir num1,num2,sumaP,x Como Entero
	
	Escribir "Ingrese 2 numeros"
	Leer num1,num2
	
	Limpiar Pantalla
	
	sumaP = 0
	
	para i <- 1 Hasta num1 con paso 1 Hacer
		sumaP = sumaP + num2
	FinPara
	
	Escribir "El resultado es : ", sumaP
FinFuncion




Funcion Ejercicio14
	
	//   Se utiliza una variable "total" para acumular la suma de los números positivos ingresados y se utiliza una variable "c" para 
	//   contar la cantidad de números positivos. El bucle "Mientras" se ejecuta hasta que se ingrese un número igual a cero. 
	//   Dentro del bucle, se verifica si el número ingresado es positivo y, de ser así, se agrega al total y se incrementa "c". 
	//   Al finalizar el bucle, se calcula el promedio dividiendo el total entre c y se muestra en pantalla.
	Definir num, total, c, promedio Como Real
	Escribir "Dados N numero positivos (N>1) calcular el promedio de esta serie. Considere que la serie termina al leer un 0."
	
	i <- 1
	
	Escribir "Ingrese numeros"
	Leer num
	
	si (num > 0) Entonces
		total <- num
		c <- 1
	FinSi
	
	Mientras num <> 0 Hacer
		Escribir "Ingrese numeros"
		Leer num
		
		si (num > 0) Entonces
			total <- total + num
			c <- c + 1
		FinSi
	FinMientras
	
	promedio <- total / c
	
	Escribir "El promedio es de:", promedio
FinFuncion




Funcion Ejercicio15
	//   Se solicita al usuario ingresar el "dividendo" y el "divisor". Luego, se inicializa el "cociente" en cero y el "residuo" 
	//   se establece como el "dividendo" inicial. Dentro del bucle "Mientras", se resta el "divisor" del "residuo" y se incrementa 
	//   el "cociente" en uno en cada iteración, siempre y cuando el residuo sea mayor o igual que el divisor. 
	//   Al finalizar el bucle, se muestra el cociente y el residuo obtenidos.
	
	
	
	Escribir "Escribir un algoritmo que divida dos numeros por medio de restas sucesivas"
	
	Definir dividendo, divisor, cociente, residuo como Entero
	
	Escribir "Ingrese el primer numero:"
	Leer num1
	
	Escribir "Ingrese el segundo numero:"
	Leer num2
	
	cociente <- 0
	residuo <- num1
	
	Mientras residuo >= num2 Hacer
		residuo <- residuo - num2
		cociente <- cociente + 1
	Fin Mientras
	
	Escribir "El cociente es:", cociente
	Escribir "El residuo es:", residuo
	FinFuncion



Algoritmo sin_titulo
	Definir opc Como Caracter
	Definir opc1 Como Caracter
	Definir  opc2 Como Caracter
	Definir opc3 Como Caracter
	Mientras opc <> '4' hacer
		Escribir "Menu principal"
		Escribir "1)Selectivas"
		Escribir "2)Condicionales"
		Escribir "3)Iterativas"
		Escribir "4)Salir"
		Escribir "Elija opció[1...4,]" Sin Saltar
		leer opc
		segun opc
			"1":
				Mientras opc1 <> '11' Hacer	
					Escribir "Selectivas"
					Escribir "1)Ejercicio1"
					Escribir "2)Ejercicio2"
					Escribir "3)Ejercicio3"
					Escribir "4)Ejercicio4"
					Escribir "5)Ejercicio5"
					Escribir "6)Ejercicio6"
					Escribir "7)Ejercicio7"
					Escribir "8)Ejercicio8"
					Escribir "9)Ejercicio9"
					Escribir "10)Ejercicio10"
					Escribir "11)Salir"
					Escribir "       Elija opció[1...11,]" Sin Saltar
					leer opc1
					segun opc1
						"1":
							expresion_matematica()
						"2":
							Calculadora_suma_resta_multiplicacion_division_modulo()
						"3":
							Calculadora_de_resolvente()
						"4":
							Hipotenusa_y_lados_Triangulos()
						"5":
							_0_par_1_impar()
						"6":
							número_binario()
						"7":
							unidades_decenas() 
						"8":
							caracteres_()
						"9":
							caracter_igualOmayor()
						"10":
							mayuscula_minuscula()
						"11":
							Escribir "Saliendo del programa"
					FinSegun
					Escribir "Elija opció[1...11,]" Sin Saltar
					leer opc1
				FinMientras
				
			"2":
				mientras opc2 <> '11' hacer	
					escribir "Condicionales"
					Escribir "1)Ejercicio1"
					Escribir "2)Ejercicio2"
					Escribir "3)Ejercicio3"
					Escribir "4)Ejercicio4"
					Escribir "5)Ejercicio5"
					Escribir "6)Ejercicio6"
					Escribir "7)Ejercicio7"
					Escribir "8)Ejercicio8"
					Escribir "9)Ejercicio9"
					Escribir "10)Ejercicio10"
					Escribir "11)Salir"
					Escribir "Elija opció[1...11,]" Sin Saltar
					leer opc2
					segun opc2
						"1":
							AñoBisiesto()
						"2":
							NumeroCapicua()
						"3":
							Cambio_Segun()
						"4":
							Primeromayor_Segundomayor()
						"5":
							Cal_valor_parquin()
						"6":
							IndicedeM()
						"7":
							DiasPasados()
						"8":
							Mes_Año()
						"9":
							mayoromenor()
						"10":
							Operadores() 
						"11":
							Escribir "Saliendo del programa"
					FinSegun
					Escribir "Elija opció[1...11,]" Sin Saltar
					leer opc2
				FinMientras
			"3":
				mientras opc3 <> '16' hacer	
					escribir "Iterativas"
					escribir "1)Ejercicio1"
					escribir "2)Ejercicio2"
					escribir "3)Ejercicio3"
					Escribir "4)Ejercicio4"
					Escribir "5)Ejercicio5"
					Escribir "6)Ejercicio6"
					Escribir "7)Ejercicio7"
					Escribir "8)Ejercicio8"
					Escribir "9)Ejercicio9"
					Escribir "10)Ejercicio10"
					Escribir "11)Ejercicio11"
					Escribir "12)Ejercicio12"
					Escribir "13)Ejercicio13"
					Escribir "14)Ejercicio14"
					Escribir "15)Ejercicio15"
					Escribir "16)Salir"
					Escribir "Elija opció[1...16,]" Sin Saltar
					leer opc3
					segun opc3
						"1":
							Ejercicio1()
						"2":
							Ejercicio2()
						"3":
							Ejercicio3()
						"4":
							Ejercicio4()
						"5":
							Ejercicio5()
						"6":
							Ejercicio6()
						"7":
							Ejercicio7()
						"8":
							Ejercicio8()
						"9":
							Ejercicio9()
						"10":
							Ejercicio10()
						"11":
							Ejercicio11()
						"12":
							Ejercicio12()
						"13":
							Ejercicio13()
						"14":
							Ejercicio14()
						"15":
							Ejercicio15()
						"16":
							Escribir "Saliendo del programa"
					FinSegun
					Escribir "Elija opció[1...16,]" Sin Saltar
					leer opc3
				FinMientras
			"4":
				Escribir "Saliendo del programa"
		FinSegun
		
	finMientras
FinAlgoritmo
