!classDefinition: #CantSuspend category: 'CodigoRepetido-Ejercicio'!
Error subclass: #CantSuspend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #NotFound category: 'CodigoRepetido-Ejercicio'!
Error subclass: #NotFound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #CustomerBookTest category: 'CodigoRepetido-Ejercicio'!
TestCase subclass: #CustomerBookTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBookTest methodsFor: 'testing' stamp: 'SB 4/29/2022 14:52:28'!
test01AddingCustomerShouldNotTakeMoreThan50Milliseconds

	| customerBook |
	
	customerBook := CustomerBook new.
	
	self comprobarSi: [customerBook addCustomerNamed: 'John Lennon'.] seEjecutaEnMenosDe: 50 * millisecond.

! !

!CustomerBookTest methodsFor: 'testing' stamp: 'FS 4/29/2022 17:24:59'!
test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds

	| customerBook paulMcCartney |
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.

	customerBook addCustomerNamed: paulMcCartney.

	self comprobarSi: [customerBook removeCustomerNamed: paulMcCartney] seEjecutaEnMenosDe: 100 * millisecond.
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'FS 4/29/2022 19:18:50'!
test03CanNotAddACustomerWithEmptyName 

	| customerBook |
			
	customerBook := CustomerBook new.
		
	self bloqueAEvaluar: [ customerBook addCustomerNamed: ''.]	 tipoDeError: Error siError: [ :anError |
			self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage.
			self assert: customerBook isEmpty ].
	! !

!CustomerBookTest methodsFor: 'testing' stamp: 'FS 4/29/2022 16:08:08'!
test04CanNotRemoveAnInvalidCustomer
	
	| customerBook johnLennon |
			
	customerBook := CustomerBook new.
	johnLennon := 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.

	self bloqueAEvaluar:[ customerBook removeCustomerNamed: 'Paul McCartney'.]
	 tipoDeError: NotFound siError:  [ :anError | 
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: johnLennon) ].
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'FS 4/29/2022 16:38:36'!
test05SuspendingACustomerShouldNotRemoveItFromCustomerBook

	| customerBook paulMcCartney|
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	
	customerBook addCustomerNamed: paulMcCartney.
	customerBook suspendCustomerNamed: paulMcCartney.
	
	self verificarCantidadesDe: customerBook deActive:0  deSuspended:1  cantTotal: 1.
	self assert: (customerBook includesCustomerNamed: paulMcCartney).
	

	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'FS 4/29/2022 16:56:41'!
test06RemovingASuspendedCustomerShouldRemoveItFromCustomerBook

	| customerBook paulMcCartney|
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	
	customerBook addCustomerNamed: paulMcCartney.
	customerBook suspendCustomerNamed: paulMcCartney.
	customerBook removeCustomerNamed: paulMcCartney.
	
	self verificarCantidadesDe: customerBook deActive:0  deSuspended:0  cantTotal: 0.
	self deny: (customerBook includesCustomerNamed: paulMcCartney).


	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'FS 4/29/2022 17:03:42'!
test07CanNotSuspendAnInvalidCustomer
	
	| customerBook johnLennon |
			
	customerBook := CustomerBook new.
	johnLennon := 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.
			
	self bloqueAEvaluar:[ customerBook suspendCustomerNamed: 'Ringo Starr'.]
	 tipoDeError: CantSuspend  siError:  [ :anError | 
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: johnLennon) ].	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'FS 4/29/2022 17:05:30'!
test08CanNotSuspendAnAlreadySuspendedCustomer
	
	| customerBook johnLennon |
			
	customerBook := CustomerBook new.
	johnLennon := 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.
	customerBook suspendCustomerNamed: johnLennon.
		
		self bloqueAEvaluar:[ customerBook suspendCustomerNamed: johnLennon.]
	 tipoDeError: CantSuspend  siError:   [ :anError | 
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: johnLennon) ]
! !


!CustomerBookTest methodsFor: 'auxiliares' stamp: 'FS 4/29/2022 19:27:15'!
bloqueAEvaluar: unBloque tipoDeError: unError siError: bloqueAEjecutar

"	CAMBIAR NOMBRE Y HACERLO MAS DESCRIPTIVO
	TIENE QUE HABLAR DE QUE EL BLOQUE QUE RECIBE TIENE QUE FALLAR SI O SI
"

	[unBloque value. self fail]
		on: unError 
		do: bloqueAEjecutar.! !

!CustomerBookTest methodsFor: 'auxiliares' stamp: 'SB 4/29/2022 14:52:17'!
comprobarSi: unBloque seEjecutaEnMenosDe: tiempoEsperado

	|millisecondsBeforeRunning millisecondsAfterRunning|

	millisecondsBeforeRunning := Time millisecondClockValue * millisecond.
	unBloque value.
	millisecondsAfterRunning := Time millisecondClockValue * millisecond.

	self assert: (millisecondsAfterRunning-millisecondsBeforeRunning) < tiempoEsperado! !

!CustomerBookTest methodsFor: 'auxiliares' stamp: 'FS 4/29/2022 16:37:29'!
verificarCantidadesDe: customerBook deActive:cantActive deSuspended:cantSuspended cantTotal:cantTotal

	self assert: cantActive equals: customerBook numberOfActiveCustomers.
	self assert: cantSuspended equals: customerBook numberOfSuspendedCustomers.
	self assert: cantTotal equals: customerBook numberOfCustomers! !


!classDefinition: #CustomerBook category: 'CodigoRepetido-Ejercicio'!
Object subclass: #CustomerBook
	instanceVariableNames: 'suspended active'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
includesCustomerNamed: aName

	^(active includes: aName) or: [ suspended includes: aName ]! !

!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
isEmpty
	
	^active isEmpty and: [ suspended isEmpty ]! !


!CustomerBook methodsFor: 'initialization' stamp: 'NR 4/3/2019 10:14:26'!
initialize

	super initialize.
	active := OrderedCollection new.
	suspended:= OrderedCollection new.! !

!CustomerBook methodsFor: 'initialization' stamp: 'FS 4/29/2022 18:47:40'!
initializeWith: aPerson
	"super initialize.
	active := OrderedCollection new.
	suspended:= OrderedCollection new."
	self initialize .
	self addCustomerNamed: aPerson .! !


!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 15:34:36'!
addCustomerNamed: aName

	self esNombreInvalido: aName.
	
	self existeCustomerConNombre: aName.
	
	self añadir: aName a: active ! !

!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 18:58:49'!
numberOfActiveCustomers
	
	^active size
	
! !

!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 11:34:11'!
numberOfCustomers
	
	^active size + suspended size! !

!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 18:58:42'!
numberOfSuspendedCustomers
	
	^suspended size
	
	! !

!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 15:21:52'!
removeCustomerNamed: aName
 
	((self fueRemovido: aName De: active) | (self fueRemovido: aName De: suspended)) ifTrue: [^aName].

	^ NotFound signal.! !

!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 18:55:47'!
signalCustomerAlreadyExists 

	self error: self class customerAlreadyExistsErrorMessage
! !

!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 11:37:40'!
signalCustomerNameCannotBeEmpty

	self error: self class customerCanNotBeEmptyErrorMessage 
	
	
	! !

!CustomerBook methodsFor: 'customer management' stamp: 'FS 4/29/2022 15:54:24'!
suspendCustomerNamed: aName 

	(self fueRemovido: aName  De: active) ifFalse: [^CantSuspend signal].
	
	self añadir: aName a: suspended .! !


!CustomerBook methodsFor: 'aux' stamp: 'FS 4/29/2022 15:34:04'!
añadir: aName a: unaLista

	unaLista add: aName! !

!CustomerBook methodsFor: 'aux' stamp: 'FS 4/29/2022 16:12:50'!
devolverCantidadDeCustomersDe: unaLista
	
	^unaLista size.
	! !

!CustomerBook methodsFor: 'aux' stamp: 'FS 4/29/2022 15:30:27'!
esNombreInvalido: aName

	 aName isEmpty ifTrue: [ self signalCustomerNameCannotBeEmpty ]! !

!CustomerBook methodsFor: 'aux' stamp: 'FS 4/29/2022 15:27:23'!
existeCustomerConNombre: aName

	 ((active includes: aName) or: [suspended includes: aName]) ifTrue: [ self signalCustomerAlreadyExists ]! !

!CustomerBook methodsFor: 'aux' stamp: 'FS 4/29/2022 19:06:04'!
fueRemovido: unNombre De: unaLista

	[unaLista remove: unNombre]
       		on: Error
        		do: [^false].
   	 ^true.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerBook class' category: 'CodigoRepetido-Ejercicio'!
CustomerBook class
	instanceVariableNames: ''!

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:18'!
customerAlreadyExistsErrorMessage

	^'Customer Already Exists'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:25'!
customerCanNotBeEmptyErrorMessage

	^'Customer Name Cannot Be Empty'! !
