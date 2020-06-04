Algoritmo EXAMEN_1_MANZANO
	//VARIABLES
	Definir reloj Como Caracter
	Definir V Como Caracter
	Definir RESP Como Real
	Definir A,B,C,SUMA Como Real
	Definir i Como Entero
	Definir SECUNDARIO,ANALITICO Como Caracter
	//DIBUJO
	Dimension reloj[30]
	reloj[1] <- '_¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶'
	reloj[2] <- '_¶¶___________________________________¶¶'
	reloj[3] <- '_¶¶___________________________________¶¶'
	reloj[4] <- '__¶¶_________________________________¶¶_'
	reloj[5] <- '__¶¶_________________________________¶¶_'
	reloj[6] <- '___¶¶_______________________________¶¶__'
	reloj[7] <- '___¶¶______________________________¶¶___'
	reloj[8] <- '____¶¶¶__________________________¶¶¶____'
	reloj[9] <- '_____¶¶¶¶_¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_¶¶¶¶_____'
	reloj[10] <- '_______¶¶¶¶_¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_¶¶¶¶_______'
	reloj[11] <- '_________¶¶¶¶_¶¶¶¶¶¶¶¶¶¶¶¶_¶¶¶¶_________'
	reloj[12] <- '___________¶¶¶¶¶_¶¶¶¶¶¶¶_¶¶¶¶___________'
	reloj[13] <- '______________¶¶¶¶_¶¶¶_¶¶¶______________'
	reloj[14] <- '________________¶¶¶_¶_¶¶________________'
	reloj[15] <- '_________________¶¶¶_¶¶_________________'
	reloj[16] <- '__________________¶¶_¶¶_________________'
	reloj[17] <- '__________________¶¶_¶__________________'
	reloj[18] <- '__________________¶¶_¶¶_________________'
	reloj[19] <- '________________¶¶¶_¶_¶¶¶_______________'
	reloj[20] <- '_____________¶¶¶¶¶__¶__¶¶¶¶¶____________'
	reloj[21] <- '__________¶¶¶¶¶_____¶_____¶¶¶¶__________'
	reloj[22] <- '________¶¶¶¶________¶_______¶¶¶¶¶_______'
	reloj[23] <- '_______¶¶¶__________¶__________¶¶¶¶_____'
	reloj[24] <- '_____¶¶¶____________¶____________¶¶¶____'
	reloj[25] <- '____¶¶¶_____________¶______________¶¶___'
	reloj[26] <- '___¶¶¶______________¶_______________¶¶__'
	reloj[27] <- '___¶¶_______________¶________________¶¶_'
	reloj[28] <- '__¶¶________________¶________________¶¶_'
	reloj[29] <- '__¶¶_______________¶¶¶________________¶_'
	reloj[30] <- '__¶¶_¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_¶¶'
	Para i<-1 Hasta 30 Hacer
		Escribir reloj[i]
	FinPara
	Escribir ' BIENVENIDO AL INTITUTO'
	Escribir 'INGRESE LA OPCION DESEADA'
	V <- 'S'
	// Opciones para responder por el usuario
	Dimension OPCIONES[3]
	Repetir
		OPCIONES[1] <- '1. Promedio'
		OPCIONES[2] <- '2. Inscripcion'
		OPCIONES[3] <- '3. Salir'
		Para i<-1 Hasta 3 Hacer
			Escribir OPCIONES[i]
		FinPara
		Leer RESP
		Mientras RESP>5 Hacer
			Escribir 'Has ingresado un número que no es válido, reinténtalo'
			Escribir ''
			Leer RESP
		FinMientras
		Segun RESP  Hacer
			1:
				SUMA <- 0
				Escribir 'Promedio de tres números'
				Escribir 'Ingrese el 1er número:'
				Leer A
				Escribir 'Ingrese el 2do numero:'
				SUMA <- SUMA+A
				Leer B
				SUMA <- SUMA+B
				Escribir 'Ingrese el 3er número:'
				Leer C
				SUMA <- SUMA+C
				Escribir 'El promedio ',A,', ',B,' y ',C,' es: ',SUMA/3
			2:
				Escribir 'Bienvenido al asistente de inscripcion'
				Escribir SECUNDARIO,', ¿Tiene usted el secundario completo? (S/N)'
				Leer SECUNDARIO
				V <- 'S'
				Si SECUNDARIO<>'N' Y SECUNDARIO<>'n' Entonces
					Escribir 'Posee analitico o constancia de analitico en tramite? (S\N)'
					Leer ANALITICO
					V <- 'S'
					Si ANALITICO<>'N' Y ANALITICO<>'n' Entonces
						Escribir ANALITICO,'Debera presentarla documentacion en la sede'
					SiNo
						Escribir ANALITICO 'DEBERA REGULARIZAR SU DOCUMENTACION HASTA ABRIL Y LUEGO VOLVER A INTENTAR'
					FinSi
				SiNo
					Escribir SECUNDARIO,'DEBERA REGULARIZAR SUS MATERIAS HASTA ABRIL Y LUEGO VOLVER A INTENTAR'
				FinSi
			3:
				Escribir 'Gracias por tu participación'
		FinSegun
		Escribir 'PRESIONE LA TECLA ENTER PARA CONTINUAR'
		Esperar Tecla
		Borrar Pantalla
	Hasta Que i<-3
FinAlgoritmo
