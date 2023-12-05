Algoritmo practicaNumeros
	Definir num1,num2,num3 Como Entero
	Escribir "Ingresar el primer numero"
	leer num1
	Escribir "Ingresar el segundo numero"
	leer num2
	Escribir "ingresar el tercer numero"
	leer num3
	
	si num1<num2 y num2<num3 Entonces
		Escribir "EL numero mayor " num3 " " "el numero centro  " num2  " " "El numero menor " num1
		Escribir "Los numeros ordenados de mayor a menor son " num3 " " num2 " " num1  
		Escribir "los numeros ordenados de menor a mayor son " num1 " " num2 " " num3
	sino 
		si num1>num2 Y num2>num3 Entonces
			Escribir "EL numero mayor " num1 " " "el numero centro  " num2  " " "El numero menor " num3
			Escribir"Los numeros ordenados de mayor a menor son " num1 " " num2 " " num3
			Escribir "los numeros ordenados de menor a mayor son " num3 " " num2  " " num1
		FinSi
	FinSi
	si num1< num2 y num2>num3 Entonces
		Escribir "EL numero mayor " num2 " " "el numero centro  " num3  " " "El numero menor " num1
		Escribir "Los numeros ordenados de mayor a menor son " num2 " " num3 " " num1  
		Escribir "los numeros ordenados de menor a mayor son " num1 " " num3 " " num2 
	SiNo
		si num1>num2 y num2<num3 Entonces
			Escribir "EL numero mayor " num1 " " "el numero centro  " num3  " " "El numero menor " num1
			Escribir "Los numeros ordenados de mayor a menor son " num1 " " num3 " " num2  
			Escribir "los numeros ordenados de menor a mayor son " num2 " " num3 " " num1 
		FinSi
	FinSi
	si num1=num2 o num1=num3 o num2=num3 Entonces
		Escribir "existen numeros son iguales"
	
	FinSi
FinAlgoritmo
