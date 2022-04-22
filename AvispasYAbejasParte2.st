!classDefinition: #HabitatDeLasAvispas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #HabitatDeLasAvispas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'HabitatDeLasAvispas class' category: 'AvispasYAbejasParte2'!
HabitatDeLasAvispas class
	instanceVariableNames: 'cantidadDeHuevosDeLaAvispaLara cantidadDePolillas cantidadDeHuevosDeAvispas cantidadDeOrugas cantidadDeHuevosDeLaAvispaPolly cantidadDeHuevosDeLaAvispaOrianaYOrnella'!

!HabitatDeLasAvispas class methodsFor: 'oruga' stamp: 'FS 4/21/2022 20:23:43'!
cantidadDeOrugas
	^cantidadDeOrugas.! !

!HabitatDeLasAvispas class methodsFor: 'oruga' stamp: 'SB 4/22/2022 16:33:04'!
ponerOrugas: cantidadDeOrugasASumar
	cantidadDeOrugas := cantidadDeOrugas + cantidadDeOrugasASumar .! !

!HabitatDeLasAvispas class methodsFor: 'oruga' stamp: 'SB 4/22/2022 16:47:17'!
sacarOrugaDelHabitat

	^ cantidadDeOrugas := cantidadDeOrugas -1! !


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

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 17:45:37'!
ponerHuevoDeAvispaOrianaYOrnella

	cantidadDeHuevosDeLaAvispaOrianaYOrnella := cantidadDeHuevosDeLaAvispaOrianaYOrnella + 1.
	self sacarOrugaDelHabitat.! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 17:01:42'!
ponerHuevoDeAvispaPolly

	cantidadDeHuevosDeLaAvispaPolly := cantidadDeHuevosDeLaAvispaPolly + 1.
	self sacarPolillaDelHabitat.! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 18:12:17'!
robarHuevosDelNidoDeOrianaYOrnella
	cantidadDeHuevosDeLaAvispaLara := cantidadDeHuevosDeLaAvispaLara + cantidadDeHuevosDeLaAvispaOrianaYOrnella .
	cantidadDeHuevosDeLaAvispaOrianaYOrnella := 0.! !

!HabitatDeLasAvispas class methodsFor: 'huevos' stamp: 'SB 4/22/2022 18:12:35'!
robarHuevosDelNidoDePolly
	cantidadDeHuevosDeLaAvispaLara := cantidadDeHuevosDeLaAvispaLara + cantidadDeHuevosDeLaAvispaPolly .
	cantidadDeHuevosDeLaAvispaPolly := 0.! !


!HabitatDeLasAvispas class methodsFor: 'reseteos' stamp: 'SB 4/22/2022 17:47:24'!
resetearCantidadDeHuevos
	cantidadDeHuevosDeLaAvispaOrianaYOrnella := 0.
	cantidadDeHuevosDeLaAvispaLara := 0.
	cantidadDeHuevosDeLaAvispaPolly := 0.! !

!HabitatDeLasAvispas class methodsFor: 'reseteos' stamp: 'FS 4/21/2022 20:36:38'!
resetearCantidadDeOrugas
	cantidadDeOrugas := 0.! !

!HabitatDeLasAvispas class methodsFor: 'reseteos' stamp: 'FS 4/22/2022 13:44:18'!
resetearCantidadDePolillas
	cantidadDePolillas := 0.! !


!HabitatDeLasAvispas class methodsFor: 'polillas' stamp: 'FS 4/22/2022 13:33:48'!
cantidadDePolillas
	^cantidadDePolillas.! !

!HabitatDeLasAvispas class methodsFor: 'polillas' stamp: 'SB 4/22/2022 16:35:26'!
ponerPolillas: cantidadDePolillasASumar
	cantidadDePolillas := cantidadDePolillas + cantidadDePolillasASumar .! !

!HabitatDeLasAvispas class methodsFor: 'polillas' stamp: 'SB 4/22/2022 16:47:44'!
sacarPolillaDelHabitat

	^ cantidadDePolillas := cantidadDePolillas -1! !


!HabitatDeLasAvispas class methodsFor: '--** private fileout/in **--' stamp: 'SB 4/22/2022 18:46:26'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeHuevosDeLaAvispaLara := 0.
	cantidadDePolillas := 0.
	cantidadDeHuevosDeAvispas := 0.
	cantidadDeOrugas := 2.
	cantidadDeHuevosDeLaAvispaPolly := 1.
	cantidadDeHuevosDeLaAvispaOrianaYOrnella := 0.! !


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

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:12:53'!
test04ParaDejarUnHuevoOrianaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/21/2022 12:13:43'!
test05ParaDejarUnHuevoOrianaLaAvispaDecrementaEnUnoLaPoblacionDeOrugasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosOrugasMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 1.! !

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

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:18'!
test08ParaDejarUnHuevoOrnellaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

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

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:40'!
test11ParaDejarUnHuevoPollyLaAvispaReduceLaPoblacionDeUnaPolillaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaPolillaMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:36'!
test12ParaDejarUnHuevoPollyLaAvispaDecrementaEnUnoLaPoblacionDePolillasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosPolillasMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 1.! !

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

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'SB 4/22/2022 18:22:45'!
test20CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAPolly
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaPolly intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 1. "RECORDAR SACARLO"
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

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 16:38:23'!
hacerQueElHabitatTengaLosRecursosSuficientes

	|cantidadDeOrugasNecesarias cantidadDePolillasNecesarias|
	cantidadDeOrugasNecesarias := 2.
	cantidadDePolillasNecesarias := 1.

	HabitatDeLasAvispas ponerOrugas: cantidadDeOrugasNecesarias .
	HabitatDeLasAvispas ponerPolillas: cantidadDePolillasNecesarias .! !

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

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/21/2022 20:40:06'!
queElHabitatTengaDosOrugasMas
	HabitatDeLasAvispas ponerOrugas: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/22/2022 13:51:54'!
queElHabitatTengaDosPolillasMas
	HabitatDeLasAvispas ponerPolillas: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/21/2022 20:40:18'!
queElHabitatTengaUnaOrugaMas
	HabitatDeLasAvispas ponerOrugas: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'FS 4/22/2022 13:35:53'!
queElHabitatTengaUnaPolillaMas
	HabitatDeLasAvispas ponerPolillas: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'SB 4/22/2022 16:37:12'!
retrocederElHabitatAlInicioDeLosTiempos
	HabitatDeLasAvispas resetearCantidadDeHuevos .
	HabitatDeLasAvispas resetearCantidadDeOrugas .
	HabitatDeLasAvispas resetearCantidadDePolillas .! !


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

!laAvispaOriana class methodsFor: 'as yet unclassified' stamp: 'SB 4/22/2022 17:31:04'!
intentarReproducirse

	(HabitatDeLasAvispas cantidadDeOrugas > 0) ifTrue: [HabitatDeLasAvispas ponerHuevoDeAvispaOrianaYOrnella.]! !


!classDefinition: #laAvispaLara category: 'AvispasYAbejasParte2'!
laAvispaOriana subclass: #laAvispaLara
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'laAvispaLara class' category: 'AvispasYAbejasParte2'!
laAvispaLara class
	instanceVariableNames: ''!

!laAvispaLara class methodsFor: 'as yet unclassified' stamp: 'SB 4/22/2022 18:42:45'!
intentarReproducirse

	((HabitatDeLasAvispas cantidadDeHuevosDeLasAvispasOrianaYOrnella > 0) | (HabitatDeLasAvispas cantidadDePolillas > 0)) ifTrue:
	[HabitatDeLasAvispas ponerHuevoDeAvispaLara .].! !


!classDefinition: #laAvispaOrnella category: 'AvispasYAbejasParte2'!
laAvispaOriana subclass: #laAvispaOrnella
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!


!classDefinition: #laAvispaPolly category: 'AvispasYAbejasParte2'!
laAvispaOriana subclass: #laAvispaPolly
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'laAvispaPolly class' category: 'AvispasYAbejasParte2'!
laAvispaPolly class
	instanceVariableNames: ''!

!laAvispaPolly class methodsFor: 'as yet unclassified' stamp: 'FS 4/22/2022 13:51:05'!
intentarReproducirse

	(HabitatDeLasAvispas cantidadDePolillas > 0) ifTrue: [HabitatDeLasAvispas ponerHuevoDeAvispaPolly .]! !

HabitatDeLasAvispas initializeAfterFileIn!