SubProceso datosAlumno ()
	
	Definir matriz Como Caracter;
	Definir f, i, j como entero; //Se definen matriz (array bidimensional), f filas, i y j para recorrer matriz.
	Escribir "Ingresa la cantidad de participantes: ";
	Leer f;
	Dimension matriz[f,4]; //las columnas son fijas (4) por nombre, apellido, fono y email.
	
	//se solicitan los datos de cada participante
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir "Ingresa nombre, apellido, fono y email del participante ", i+1, ": ";
			Leer matriz[i,j];
		FinPara
	FinPara
	
	//Solo se recorren las filas mostrando los datos de cada columna
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Escribir "NOMBRE: ", matriz[i,0], " APELLIDO: ", matriz[i,1], " FONO: ", matriz[i,2], " EMAIL: ", matriz[i,3];
	FinPara
	
FinSubProceso

SubProceso nombresTalentos ()
	
	Definir n,i como entero; //tamaño del arreglo, o en otras palabras, cantidad de talentos. i para recorrer.
	//Se pide al usuario tamaño del arreglo o cant de talentos digitales
	Escribir "Ingresa la cantidad de Talentos Digitales a ingresar";
	Leer n;
	
	Definir nombres Como Caracter;
	Dimension nombres[n]; //se dimensiona el arreglo
	
	//se rellena el arreglo (lista alumnos) con los nombres
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingresa los nombres a la lista: ";
		Leer nombres[i];
	FinPara
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir "[", nombres[i], "]" Sin Saltar; //falta incluir que sea maximo 5 nombres por linea
	FinPara
	
FinSubProceso

SubProceso nombresRepetidos ()
	
	Definir nombres Como Caracter;
	Definir i como entero;
	Dimension nombres[10];
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer //
		Escribir "Ingresa un nombre: ";
		Leer nombres[i];
	FinPara
	
FinSubProceso

SubProceso juanGana ()
	
	Definir nombres como caracter;
	Definir cont como entero;
	cont<-1; //se inicia contador en 1 ya que al ingresar "JUAN" se debe contabilizar ese ultimo intento
	
	Repetir
		Escribir "Ingresa los nombres de los participantes";
		Leer nombres;
		Si nombres<>"juan" y nombres<>"Juan" Entonces
			cont<-cont+1;
		SiNo
			Escribir "GANASTE";
			Escribir "Despues de ", cont, " intentos";
		FinSi
	Hasta Que nombres="Juan" o nombres="juan"
	
FinSubProceso

SubProceso  ingreseNumYcalcProm ()
	//se definen variables necesarias para la operacion
	Definir num, suma, cont como entero;//suma para acumular los numeros, cont para contar la cantidad de veces que se suma.
	Definir prom Como Real;
	suma<-0; //comienza en 0
	cont<-0;
	
	Escribir "Ingresa los numeros que quieres promediar: ";
	Leer num;
	
	Si num=0 Entonces
		Escribir "Se a acabado el programa";
	SiNo
		Mientras num<>0 Hacer
			leer num;
			suma<-suma+num;
			cont<-cont+1;
		FinMientras
		prom<-suma/(cont-1); //contador -1 porque el bucle contabiliza el 0
		Escribir "El promedio de los numeros ingresados es: ", prom;
	FinSi
	
FinSubProceso

SubProceso  numEnPalabras ()
	//Se define variable num como entero, y se pide a usuario que ingrese un numero de 1 a 10.
	Definir num como entero;
	Escribir "Por favor ingresa un numero del 1 al 10";
	Leer num;
	
	//se utiliza estructura segun para convertir numero a numero escrito en palabras
	Segun num Hacer
		1:
			Escribir "UNO";
		2:
			Escribir "DOS";
		3:
			Escribir "TRES";
		4:
			Escribir "CUATRO";
		5:
			Escribir "CINCO";
		6:
			Escribir "SEIS";
		7:
			Escribir "SIETE";
		8:
			Escribir "OCHO";
		9:
			Escribir "NUEVE";
		10:
			Escribir "DIEZ";
		De Otro Modo:
			Escribir "Numero fuera de rango";
	FinSegun
	
FinSubProceso

SubProceso cobroBano ()
	
	identificaUsuarioBano(); //Se invoca la funcion que identifica al usuario con su baño correspondiente
	
	Definir servicio Como Caracter; //Se define variable que almacena tipo de servicio
	
	Escribir "";//Espacio para salto de linea
	//A continuacion se pide al usuario que escoja un servicio y se lee su opcion
	Escribir "Ingrese el servicio que desea utilizar (Baño o Ducha): ";
	Leer servicio;
	
	//Se define la variable cobro que almacena el monto segun servicio escogido
	Definir cobro como Entero;
	cobro<-0; //cobro inicial 0, se carga el cobro segun tipo de servicio.
	
	//Condicional anidada, si el servicio es baño, el valor de cobro es 250, sino si el servicio es ducha el valor de cobro es 2500
	Si servicio="Baño" o servicio="baño" Entonces
		cobro<-250;
		Escribir "El costo del baño son ", cobro, " pesos.";
	SiNo
		Si servicio="Ducha" o servicio="ducha" Entonces
			cobro<-2500;
			Escribir "El costo de la Ducha son ", cobro, " pesos.";
		SiNo
			Escribir "Solo ofrecemos servicio de Baño o Ducha";
		FinSi
	FinSi
	
FinSubProceso

SubProceso identificaUsuarioBano () //esta funcion solicita nombre y genero para luego derivarlo al baño correspondiente con
	//una condicion SI entonces.
	
	//Se definen variables nombre y genero, y se pide al usuario que las ingrese
	Definir nombre como caracter;
	Definir genero como caracter;
	
	Escribir "Ingrese su nombre y genero (M - V): ";
	Leer nombre, genero;
	
	//Si genero es M, entonces se asigna baño de mujeres, sino, se asume que es varon (requerimientos no solicitan si anidado) y se asigna baño de varones.
	Si genero="M" Entonces
		Escribir "Por favor, ", nombre, " ingrese al baño de Mujeres";
	SiNo
		Escribir "Por favor, ", nombre, " ingrese al baño de Varones";
	FinSi
	
FinSubProceso

SubProceso promedioNums ()
	//Esta funcion pide al usuario tres numeros y calcula su promedio.
	
	Definir res,n1,n2,n3 como Real;//requerimiento no indica tipo de numero, se utiliza tipo Real para abarcar mas posibilidades.
	Escribir "Ingresa tres numeros: ";
	Leer n1,n2,n3;
	
	res<-((n1+n2+n3)/3);
	
	Escribir "El promedio de ", n1, ", ", n2, ", ", n3, " es: ", res;
FinSubProceso

Proceso evaluacion1_pmancini
	
	//Crear menu de funciones
	
	//definir variable opcion (op)
	Definir op Como Entero;
	//Mostramos al usuario el menu
	Escribir "MENU DE FUNCIONES";
	Escribir "-----------------";
	Escribir "1. Secuencial";
	Escribir "2. Condicional si entonces"; 
	Escribir "3. Condicional si entonces anidado"; 
	Escribir "4. Condicional segun"; 
	Escribir "5. Repetitiva mientras";
	Escribir "6. Repetitiva repetir";
	Escribir "7. repetitiva para";
	Escribir "8. Arreglo simple";
	Escribir "9. arreglo bidimensional";
	Escribir "10. Salir";
	Escribir "";
	//Pedimos al usuario que seleccione la opcion, esta solo puede ser entre 1 y 10.
	Escribir "Por favor selecciona una opcion del menu: ";
	Leer op;
	
	Si op>0 y op<11 Entonces //se valida que la opcion ingresada pertenezca a las opciones del menu
			Segun op Hacer
				1://Seleccion funcion promedio (secuencial)
					Escribir "-----------------------------------";//escribir vacio para que exista un salto de linea luego de seleccionar una opcion
					Escribir "Bienvenido, en esta opcion puedes calcular el promedio de tres numeros!!";
					promedioNums();
				2://Seleccion funcion condicional si entonces
					Escribir "------------------------------------";
					identificaUsuarioBano();
				3://Seleccion funcion condicional si entonces anidado
					Escribir "------------------------------------";
					cobroBano();
				4://Seleccion funcion condicional segun
					Escribir "-------------------------------------";
					numEnPalabras();
				5://Seleccion funcion repetitiva mientras
					Escribir "-------------------------------------";
					ingreseNumYcalcProm();
				6://Seleccion funcion repetitiva repetir
					Escribir "-------------------------------------";
					juanGana();
				7://Seleccion funcion repetitiva para
					Escribir "-------------------------------------";
					nombresRepetidos();
				8://Seleccion funcion arreglo simple
					Escribir "-------------------------------------";
					nombresTalentos();
				9://Seleccion funcion arreglo bidimensional
					Escribir "-------------------------------------";
					datosAlumno();
				10://Seleccion opcion salir
					Escribir "-------------------------------------";
					Escribir "SAYONARA PROFESOR"; //mensaje de despedida y cierre de programa
			FinSegun
	SiNo
		Escribir "La opcion ingresada no pertenece al menu";
	FinSi
	
FinProceso
