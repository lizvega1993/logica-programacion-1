Algoritmo inventarioProdcutos
	//Definir la matriz para el inventario
	//vector, matriz o arreglo siempre son contenedores
	Dimension inventario[100,4]// maximo 100 productos, en 3 columnas
	//Inicializar variables para controlar el menu
	Definir opcion, codigo, cantidad, indice, totalVenta Como Entero
	definir nombreProducto Como Caracter
	definir precioProducto Como Real
	//inicializar el ciclo principal del programa
	Repetir
		//Mostrar el menu
		Escribir "Seleccione una opción:"
		Escribir "1. Agregar nuevo producto"
		Escribir "2. Actualzar cantidad disponible"
		Escribir "3. Mostrar informacion del inventario"
		Escribir "4. Realizar Venta"
		Escribir "5. Eliminar producto"
		Escribir "6.Salir"
		Leer opcion
		//Realizar las acciones segun la opcion que elijamos
		segun opcion hacer
			1: // agregar nuevo producto
				Escribir "Ingrese el codigo del producto:"
				Leer codigo
				Escribir "Ingerse el nombre del producto:"
				Leer nombreProducto
				Escribir "Ingerse la cantidad del producto:"
				Leer cantidad
				Escribir "Ingrese el precio del producto:"
				Leer precioProducto
				//buscar un espacio disponible en el inventario
				//indice hace referencia a la posicion en la matriz
				//buscar espacio
				indice<- 1 
				Mientras indice<=100 y inventario[indice,1] <>0 Hacer
					indice<- +1
				FinMientras
				//verificar si hay un espacio
				si indice<= 100 Entonces
					inventario[indice,1]<- codigo
					//inventario[indice,2]<- nombreProducto no se puede con este tipo de bucles
					inventario[indice,3]<- cantidad
					inventario[indice,4]<- precioProducto
					Escribir "Producto agregado correctamente"
				SiNo
					Escribir "no hay espacio disponible en el inventario"
				FinSi
			2: //Actualizar la cantidad 
				Escribir "Ingrese el codigo del prodcuto:"
				Leer codigo
				//Buscar el producto en el inventario
				indice<- 1
				Mientras indice<= 100 y inventario[indice,1] <> codigo Hacer
					indice<- indice+1
				FinMientras
				//Verificar si se encontro el producto
				si indice<=100 Entonces
					Escribir "Ingrese la nueva cantidad disponible:"
					Leer cantidad
					inventario[indice,3]<- cantidad
					Escribir "Cantidad fue actualizada correctamente"
				sino 
					Escribir "Producto no encontrado en el inventario"
				FinSi
			3: //mostrar informacion del inventario
				Escribir "Codigo | Nombre | Cantidad | Precio"
				para indice desde 1 hasta 100 Hacer
					si inventario[indice,1] <> 0 Entonces
						Escribir inventario[indice,1], "|", inventario[indice,2] ,"|" inventario[indice,3], "|" inventario[indice,4]
					FinSi
				FinPara
			4: // Realizar venta
				Escribir "ngrese el codigo del productoa vender"
				Leer codigo
				//Buscar el producto en el inventario
				indice<- 1 
				Mientras indice <= 100 Y inventario[indice,1] <> codigo Hacer
					indice<- indice +1
				FinMientras
				//Verificar si se encontro el producto
				si indice<= 100 Entonces
					Escribir "Ingrese la cantidad a vender:"
					Leer cantidad
					si cantidad <= inventario[indice,3] Entonces
						totalVenta<- cantidad*inventario[indice,4]
						Escribir "Venta realizada, total a pagar es de : $", totalVenta
						// Actualizar la cantidad en el inventario
						inventario[indice,3] <- inventario[indice,2]- cantidad
					SiNo
						Escribir  "no hay suficiente cantidad"
					FinSi
				SiNo
					Escribir " Producto no encontrado en el inventario"
				FinSi
			5: //Eliminar el producto	
				
				
			6: //Salir del programa
				Escribir "Te saliste del programa, reinicialo"
		FinSegun
	Hasta Que opcion=6
	
FinAlgoritmo
