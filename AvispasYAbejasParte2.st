!classDefinition: #HabitatDeLasAvispas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #HabitatDeLasAvispas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'HabitatDeLasAvispas class' category: 'AvispasYAbejasParte2'!
HabitatDeLasAvispas class
	instanceVariableNames: 'cantidadDeHuevosDeLaAvispaLara cantidadDePolillasEnElHabitat cantidadDeHuevosDeAvispas cantidadDeOrugasEnElHabitat cantidadDeHuevosDeLaAvispaPolly cantidadDeHuevosDeLaAvispaOrianaYOrnella'!

!HabitatDeLasAvispas class methodsFor: 'orugas' stamp: 'SB 4/22/2022 19:28:00'!
cantidadDeOrugasEnElHabitat
	^cantidadDeOrugasEnElHabitat.! !

!HabitatDeLasAvispas class methodsFor: 'orugas' stamp: 'SB 4/22/2022 19:28:00'!
incrementarLaCantidadDeOrugasEnElHabitat: cantidadDeOrugasASumar
	cantidadDeOrugasEnElHabitat := cantidadDeOrugasEnElHabitat + cantidadDeOrugasASumar .! !

!HabitatDeLasAvispas class methodsFor: 'orugas' stamp: 'SB 4/22/2022 19:29:37'!
reducirLaCantidadDeOrugasEnElHabitat

	^ cantidadDeOrugasEnElHabitat := cantidadDeOrugasEnElHabitat -1! !


!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 17:45:54'!
cantidadDeHuevosDeAvispas
	^cantidadDeHuevosDeAvispas := cantidadDeHuevosDeLaAvispaOrianaYOrnella + cantidadDeHuevosDeLaAvispaPolly + cantidadDeHuevosDeLaAvispaLara .! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 17:39:49'!
cantidadDeHuevosDeLaAvispaLara
	^cantidadDeHuevosDeLaAvispaLara .! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 16:53:42'!
cantidadDeHuevosDeLaAvispaPolly
	^cantidadDeHuevosDeLaAvispaPolly .! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 17:45:19'!
cantidadDeHuevosDeLasAvispasOrianaYOrnella
	^cantidadDeHuevosDeLaAvispaOrianaYOrnella .! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 18:16:48'!
ponerHuevoDeAvispaLara

	"
	Como se va a poner huevos de laAvispaLara se da por hecho que se los roba a otra Avispa, por lo tanto, como en
	intentarReproducirse la avispa Lara va a fijarse primero si le puede robar huevos a las avispas Ornella y Oriana,
	si ellas tienen huevos en el nido se los roba, sino se los debe robar a laAvispaPolly.
	"
	
	(self cantidadDeHuevosDeLasAvispasOrianaYOrnella > 0) ifTrue: self robarHuevosDelNidoDeOrianaYOrnella ifFalse: self robarHuevosDelNidoDePolly .
! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 19:29:37'!
ponerHuevoDeAvispaOrianaYOrnella

	cantidadDeHuevosDeLaAvispaOrianaYOrnella := cantidadDeHuevosDeLaAvispaOrianaYOrnella + 1.
	self reducirLaCantidadDeOrugasEnElHabitat.! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 19:30:11'!
ponerHuevoDeAvispaPolly

	cantidadDeHuevosDeLaAvispaPolly := cantidadDeHuevosDeLaAvispaPolly + 1.
	self reducirLaCantidadDePolillasEnElHabitat.! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 18:12:17'!
robarHuevosDelNidoDeOrianaYOrnella
	cantidadDeHuevosDeLaAvispaLara := cantidadDeHuevosDeLaAvispaLara + cantidadDeHuevosDeLaAvispaOrianaYOrnella .
	cantidadDeHuevosDeLaAvispaOrianaYOrnella := 0.! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 18:12:35'!
robarHuevosDelNidoDePolly
	cantidadDeHuevosDeLaAvispaLara := cantidadDeHuevosDeLaAvispaLara + cantidadDeHuevosDeLaAvispaPolly .
	cantidadDeHuevosDeLaAvispaPolly := 0.! !


!HabitatDeLasAvispas class methodsFor: 'restauracion de valores' stamp: 'SB 4/22/2022 19:34:16'!
restaurarLaCantidadDeHuevosEnElHabitat
	cantidadDeHuevosDeLaAvispaOrianaYOrnella := 0.
	cantidadDeHuevosDeLaAvispaLara := 0.
	cantidadDeHuevosDeLaAvispaPolly := 0.! !

!HabitatDeLasAvispas class methodsFor: 'restauracion de valores' stamp: 'SB 4/22/2022 19:34:08'!
restaurarLaCantidadDeOrugasEnElHabitat
	cantidadDeOrugasEnElHabitat := 0.! !

!HabitatDeLasAvispas class methodsFor: 'restauracion de valores' stamp: 'SB 4/22/2022 19:33:59'!
restaurarLaCantidadDePolillasEnElHabitat
	cantidadDePolillasEnElHabitat := 0.! !


!HabitatDeLasAvispas class methodsFor: 'polillas' stamp: 'SB 4/22/2022 19:31:00'!
cantidadDePolillasEnElHabitat
	^cantidadDePolillasEnElHabitat.! !

!HabitatDeLasAvispas class methodsFor: 'polillas' stamp: 'SB 4/22/2022 19:31:00'!
incrementarLaCantidadDePolillasEnElHabitat: cantidadDePolillasASumar
	cantidadDePolillasEnElHabitat := cantidadDePolillasEnElHabitat + cantidadDePolillasASumar .! !

!HabitatDeLasAvispas class methodsFor: 'polillas' stamp: 'SB 4/22/2022 19:31:00'!
reducirLaCantidadDePolillasEnElHabitat

	^ cantidadDePolillasEnElHabitat := cantidadDePolillasEnElHabitat -1! !


!HabitatDeLasAvispas class methodsFor: '--** private fileout/in **--' stamp: 'SB 4/22/2022 19:37:08'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeHuevosDeLaAvispaLara := 0.
	cantidadDePolillasEnElHabitat := 1.
	cantidadDeHuevosDeAvispas := 0.
	cantidadDeOrugasEnElHabitat := 1.
	cantidadDeHuevosDeLaAvispaPolly := 0.
	cantidadDeHuevosDeLaAvispaOrianaYOrnella := 1.! !


!classDefinition: #PruebasReproduccionDeAvispas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #PruebasReproduccionDeAvispas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasReproduccionDeAvispas class' category: 'AvispasYAbejasParte2'!
PruebasReproduccionDeAvispas class
	instanceVariableNames: ''!

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/18/2022 18:38:11'!
test01EnElInicioDeLosTiemposNoHayHuevos	
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:44'!
test02CuandoOrianaLaAvispaSeReproducePorPrimeraVezDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:11'!
test03CadaVezQueOrianaSeReproduceDejaUnHuevoMas
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'SB 4/22/2022 19:27:01'!
test04ParaDejarUnHuevoOrianaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugasEnElHabitat isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'SB 4/22/2022 19:27:01'!
test05ParaDejarUnHuevoOrianaLaAvispaDecrementaEnUnoLaPoblacionDeOrugasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosOrugasMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugasEnElHabitat isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:13:22'!
test06CuandoNoHayOrugasOrianaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:24'!
test07CuandoOrnellaLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'SB 4/22/2022 19:27:01'!
test08ParaDejarUnHuevoOrnellaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugasEnElHabitat isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:11'!
test09CuandoNoHayOrugasOrnellaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:46'!
test10CuandoPollyLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'SB 4/22/2022 19:30:48'!
test11ParaDejarUnHuevoPollyLaAvispaReduceLaPoblacionDeUnaPolillaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaPolillaMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillasEnElHabitat isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'SB 4/22/2022 19:30:48'!
test12ParaDejarUnHuevoPollyLaAvispaDecrementaEnUnoLaPoblacionDePolillasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosPolillasMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillasEnElHabitat isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:30'!
test13CuandoNoHayPolillasPollyLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:06'!
test14CuandoOrianaLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:02'!
test15CuandoOrianaLaAvispaAunNoSeReprodujoNoTieneHuevosConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:58'!
test16CuandoPollyLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 1.
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:54'!
test17CuandoOrnellaLaAvispaSeReproduceDejaUnHuevoConLaMismaFirmaGeneticaQueOriana
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella isEqualTo: 1.
	Assert 
		that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella  
		isEqualTo: self cantidadDeHuevosConLaFirmaGeneticaDeOriana! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:27'!
test18CuandoLaraLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOrnella intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:22'!
test19CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAOtraAvispa
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'SB 4/22/2022 19:11:11'!
test20CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAPolly
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaPolly intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.

	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:12'!
test21CuandoLaraLaAvispaNoTieneRecursosNoDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
		
	self laAvispaLara intentarReproducirse.
		
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 17:49:00'!
cantidadDeHuevosConLaFirmaGeneticaDeLara
	^HabitatDeLasAvispas cantidadDeHuevosDeLaAvispaLara .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 17:28:17'!
cantidadDeHuevosConLaFirmaGeneticaDeOriana
	^HabitatDeLasAvispas cantidadDeHuevosDeLasAvispasOrianaYOrnella .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 17:29:59'!
cantidadDeHuevosConLaFirmaGeneticaDeOrnella
	^HabitatDeLasAvispas cantidadDeHuevosDeLasAvispasOrianaYOrnella .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 17:05:51'!
cantidadDeHuevosConLaFirmaGeneticaDePolly
	^HabitatDeLasAvispas cantidadDeHuevosDeLaAvispaPolly .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/21/2022 19:38:55'!
habitat
	^HabitatDeLasAvispas.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 19:30:33'!
hacerQueElHabitatTengaLosRecursosSuficientes

	|cantidadDeOrugasNecesarias cantidadDePolillasNecesarias|
	cantidadDeOrugasNecesarias := 2.
	cantidadDePolillasNecesarias := 1.

	HabitatDeLasAvispas incrementarLaCantidadDeOrugasEnElHabitat: cantidadDeOrugasNecesarias .
	HabitatDeLasAvispas incrementarLaCantidadDePolillasEnElHabitat: cantidadDePolillasNecesarias .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 17:50:01'!
laAvispaLara
	^laAvispaLara .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/21/2022 19:55:30'!
laAvispaOriana
	^laAvispaOriana.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/22/2022 13:29:57'!
laAvispaOrnella
	^laAvispaOrnella .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/22/2022 13:31:57'!
laAvispaPolly
	^laAvispaPolly .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 19:26:19'!
queElHabitatTengaDosOrugasMas
	HabitatDeLasAvispas incrementarLaCantidadDeOrugasEnElHabitat: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 19:30:33'!
queElHabitatTengaDosPolillasMas
	HabitatDeLasAvispas incrementarLaCantidadDePolillasEnElHabitat: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 19:26:19'!
queElHabitatTengaUnaOrugaMas
	HabitatDeLasAvispas incrementarLaCantidadDeOrugasEnElHabitat: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 19:30:33'!
queElHabitatTengaUnaPolillaMas
	HabitatDeLasAvispas incrementarLaCantidadDePolillasEnElHabitat: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 19:34:16'!
retrocederElHabitatAlInicioDeLosTiempos
	HabitatDeLasAvispas restaurarLaCantidadDeHuevosEnElHabitat .
	HabitatDeLasAvispas restaurarLaCantidadDeOrugasEnElHabitat .
	HabitatDeLasAvispas restaurarLaCantidadDePolillasEnElHabitat .! !


!classDefinition: #laAvispaLara category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #laAvispaLara
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'laAvispaLara class' category: 'AvispasYAbejasParte2'!
laAvispaLara class
	instanceVariableNames: ''!

!laAvispaLara class methodsFor: 'reproduccion' stamp: 'SB 4/22/2022 19:17:38'!
intentarReproducirse

	((HabitatDeLasAvispas cantidadDeHuevosDeLasAvispasOrianaYOrnella > 0) | (HabitatDeLasAvispas cantidadDeHuevosDeLaAvispaPolly > 0)) ifTrue:
	[HabitatDeLasAvispas ponerHuevoDeAvispaLara .].! !


!classDefinition: #laAvispaOriana category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #laAvispaOriana
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'laAvispaOriana class' category: 'AvispasYAbejasParte2'!
laAvispaOriana class
	instanceVariableNames: ''!

!laAvispaOriana class methodsFor: 'reproduccion' stamp: 'SB 4/22/2022 19:27:01'!
intentarReproducirse

	(HabitatDeLasAvispas cantidadDeOrugasEnElHabitat > 0) ifTrue: [HabitatDeLasAvispas ponerHuevoDeAvispaOrianaYOrnella.]! !


!classDefinition: #laAvispaOrnella category: 'AvispasYAbejasParte2'!
laAvispaOriana subclass: #laAvispaOrnella
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!


!classDefinition: #laAvispaPolly category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #laAvispaPolly
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'laAvispaPolly class' category: 'AvispasYAbejasParte2'!
laAvispaPolly class
	instanceVariableNames: ''!

!laAvispaPolly class methodsFor: 'reproduccion' stamp: 'SB 4/22/2022 19:30:48'!
intentarReproducirse

	(HabitatDeLasAvispas cantidadDePolillasEnElHabitat > 0) ifTrue: [HabitatDeLasAvispas ponerHuevoDeAvispaPolly .]! !

HabitatDeLasAvispas initializeAfterFileIn!