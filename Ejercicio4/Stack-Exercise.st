!classDefinition: #OOStackTest category: 'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:29:55'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:01'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:09'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:48'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'first'.
	secondPushedObject := 'second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:20'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:24'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:31'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: 'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:27:05'!
test01StatementExample

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'winter is coming' with: 'winning is everything' with: 'The winds of Winter' 					with: 'Winter is here'.

	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self assert: (finder find: 'Wint') first = stringsCollection last .! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:27:34'!
test02CheckingCaseSensitive

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'Boca' with: 'boca'.
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self assert: (finder find: 'boca') first = stringsCollection last .
	self assert: (finder find: 'Boca') first = stringsCollection first .! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:30:45'!
test03FindMoreThanAnElementWithOnePrefix

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'Hola Mundo' with: 'Holanda' with: 'Hola World' with: 'hola que ase'.
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self assert: (finder find: 'Hola') = (stringsCollection copyFrom: 1 to: 3).! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:43:27'!
test04CanNotFindAnyElementWithAPrefix

	| stack finder stringsCollection stringsEncontrados |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'winter is coming' with: 'winning is everything' with: 'The winds of Winter'.
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.
	stringsEncontrados := finder find: 'Wint'.
	self assert: stringsEncontrados size = 0 .! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:34:20'!
test05CanNotFindAnElementInEmptyStack

	| stack finder stringsEncontrados |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	finder copyStack: stack.
	stringsEncontrados := finder find: 'Wint'.
	self assert: stringsEncontrados size = 0 .! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 15:27:06'!
test06PrefixCanNotBeEmptyString

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'winter is coming' with: 'winning is everything' with: 'The winds of Winter'.
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self
		should: [ finder find: '' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = SentenceFinderByPrefix prefixEmptyErrorDescription ]! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 16:38:40'!
test07CanNotFindAStringComposedWithMoreThanAWord

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'winter is coming' with: 'winning is everything' with: 'The winds of Winter'.
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self
		should: [ finder find: 'winter is' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = SentenceFinderByPrefix
						prefixIsComposedOfMoreThanAWordErrorDescription]! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:41:35'!
test08AfterFindAPrefixStackRetainsTheSize

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'winter is coming' with: 'winning is everything' with: 'The winds of Winter'.
	stringsCollection do: [:string | stack push: string].

	self assert: stack size = 3 .

	finder copyStack: stack.
	finder find: 'wint'.

	self assert: stack size = 3 .! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:46:10'!
test09FoundAPrefixThenPopThenCanNotFound

	| stack finder stringsCollection stringDePrueba |
	
	stringDePrueba := 'Boca'.

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'palabra' with: stringDePrueba .
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self assert: (finder find: stringDePrueba) size = 1 .

	stack pop.
	finder copyStack: stack.

	self assert: (finder find: stringDePrueba) size = 0 .! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 12:43:00'!
test10SearchingTwiceReturnsTheSame

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'Boca' with: 'boca'.
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self assert: (finder find: 'boca') = (finder find: 'boca').! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'SB 5/14/2022 16:33:28'!
test11PrefixCanNotBeAnEmptySpace

	| stack finder stringsCollection |

	stack := OOStack new.
	finder := SentenceFinderByPrefix new.

	stringsCollection := OrderedCollection with: 'winter is coming' with: 'winning is everything' with: 'The winds of Winter'.
	stringsCollection do: [:string | stack push: string].

	finder copyStack: stack.

	self
		should: [ finder find: ' ' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = SentenceFinderByPrefix prefixEmptySpaceErrorDescription ]! !


!classDefinition: #OOStack category: 'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'stack state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'state' stamp: 'FS 5/12/2022 21:11:31'!
isEmpty

	^stack isEmpty .! !

!OOStack methodsFor: 'state' stamp: 'SB 5/14/2022 12:02:37'!
updateMyState

	|subclass|

	subclass := StackStatus subclasses detect: [:class | class doYouAcceptMySize: self size].

	state := subclass new.! !


!OOStack methodsFor: 'basic stack operations' stamp: 'SB 5/14/2022 12:02:37'!
pop

	self updateMyState . 

	^state howDoIRemoveTheTop: self.

	


	! !

!OOStack methodsFor: 'basic stack operations' stamp: 'SB 5/14/2022 12:02:37'!
push: anElement

	stack addLast: anElement.

	self updateMyState.
	

	! !

!OOStack methodsFor: 'basic stack operations' stamp: 'FS 5/10/2022 12:38:01'!
size

	^stack size.! !

!OOStack methodsFor: 'basic stack operations' stamp: 'SB 5/14/2022 01:51:34'!
top

	^state howDoIReturnMyTop: self.! !


!OOStack methodsFor: 'initialize' stamp: 'SB 5/14/2022 12:02:37'!
initialize

	stack := OrderedCollection  new.
	
	self updateMyState .! !


!OOStack methodsFor: 'stack functions - private' stamp: 'SB 5/14/2022 01:40:16'!
removeTopOfStack

	^stack removeLast.! !

!OOStack methodsFor: 'stack functions - private' stamp: 'SB 5/14/2022 01:56:06'!
whatIsMyTop

	^stack last.! !


!OOStack methodsFor: 'error handling' stamp: 'SB 5/14/2022 01:35:44'!
raiseErrorWhenGettingTopOfEmptyStack

	self error: OOStack stackEmptyErrorDescription .! !

!OOStack methodsFor: 'error handling' stamp: 'SB 5/14/2022 01:37:51'!
raiseErrorWhenRemovingTopOfEmptyStack

	self error: OOStack stackEmptyErrorDescription .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: 'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #PrefixClass category: 'Stack-Exercise'!
Object subclass: #PrefixClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!PrefixClass methodsFor: 'find' stamp: 'SB 5/14/2022 16:03:01'!
findElement: finder

	self subclassResponsibility .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PrefixClass class' category: 'Stack-Exercise'!
PrefixClass class
	instanceVariableNames: ''!

!PrefixClass class methodsFor: 'prefix checking' stamp: 'SB 5/14/2022 16:12:01'!
doYouAcceptMyString: aString

	self subclassResponsibility .! !


!classDefinition: #ComposedString category: 'Stack-Exercise'!
PrefixClass subclass: #ComposedString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!ComposedString methodsFor: 'find' stamp: 'SB 5/14/2022 16:03:01'!
findElement: finder

	finder ifPrefixIsComposedOfMoreThanAWordReturnError: self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ComposedString class' category: 'Stack-Exercise'!
ComposedString class
	instanceVariableNames: ''!

!ComposedString class methodsFor: 'prefix checking' stamp: 'SB 5/14/2022 16:18:26'!
doYouAcceptMyString: aString

	^aString substrings size > 1.
	"^aString includesSubString: ' '."! !


!classDefinition: #EmptySpaceString category: 'Stack-Exercise'!
PrefixClass subclass: #EmptySpaceString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!EmptySpaceString methodsFor: 'find' stamp: 'SB 5/14/2022 16:29:40'!
findElement: finder

	finder ifPrefixIsEmptySpaceReturnError .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmptySpaceString class' category: 'Stack-Exercise'!
EmptySpaceString class
	instanceVariableNames: ''!

!EmptySpaceString class methodsFor: 'prefix checking' stamp: 'SB 5/14/2022 16:31:55'!
doYouAcceptMyString: aString

	^ (aString includesSubString: ' ') .! !


!classDefinition: #EmptyString category: 'Stack-Exercise'!
PrefixClass subclass: #EmptyString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!EmptyString methodsFor: 'find' stamp: 'SB 5/14/2022 16:03:01'!
findElement: finder

	finder ifPrefixIsEmptyReturnError.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmptyString class' category: 'Stack-Exercise'!
EmptyString class
	instanceVariableNames: ''!

!EmptyString class methodsFor: 'prefix checking' stamp: 'SB 5/14/2022 16:12:01'!
doYouAcceptMyString: aString

	^aString isEmpty .! !


!classDefinition: #SingleString category: 'Stack-Exercise'!
PrefixClass subclass: #SingleString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SingleString methodsFor: 'find' stamp: 'SB 5/14/2022 16:03:01'!
findElement: finder

	^finder findAStringInStack.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SingleString class' category: 'Stack-Exercise'!
SingleString class
	instanceVariableNames: ''!

!SingleString class methodsFor: 'prefix checking' stamp: 'SB 5/14/2022 16:21:29'!
doYouAcceptMyString: aString

	^ (aString includesSubString: ' ') not and: (aString substrings size = 1).! !


!classDefinition: #SentenceFinderByPrefix category: 'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: 'stack prefixCollaborator string'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'initialize' stamp: 'SB 5/14/2022 15:36:32'!
copyStack: aStack

	stack := OrderedCollection new.

	[aStack isEmpty] whileFalse: [stack addFirst: aStack pop].

	stack do: [:anElement | aStack push: anElement].! !


!SentenceFinderByPrefix methodsFor: 'error handling' stamp: 'SB 5/14/2022 15:26:05'!
ifPrefixIsComposedOfMoreThanAWordReturnError: Prefix

	self error: SentenceFinderByPrefix		 prefixIsComposedOfMoreThanAWordErrorDescription.! !

!SentenceFinderByPrefix methodsFor: 'error handling' stamp: 'SB 5/14/2022 15:26:10'!
ifPrefixIsEmptyReturnError

	self error: SentenceFinderByPrefix prefixEmptyErrorDescription.! !

!SentenceFinderByPrefix methodsFor: 'error handling' stamp: 'SB 5/14/2022 16:29:21'!
ifPrefixIsEmptySpaceReturnError

	self error: SentenceFinderByPrefix prefixEmptySpaceErrorDescription .! !


!SentenceFinderByPrefix methodsFor: 'basic operation' stamp: 'SB 5/14/2022 16:12:01'!
definePrefixClass: Prefix

	| subclassPrefix |
	subclassPrefix := PrefixClass subclasses detect: [:class | class doYouAcceptMyString: Prefix].

	string := Prefix.
	prefixCollaborator := subclassPrefix new.! !

!SentenceFinderByPrefix methodsFor: 'basic operation' stamp: 'SB 5/14/2022 16:03:01'!
find: Prefix

	self definePrefixClass: Prefix.
	^prefixCollaborator findElement: self.! !

!SentenceFinderByPrefix methodsFor: 'basic operation' stamp: 'SB 5/14/2022 15:36:32'!
findAStringInStack

	^stack select: [:aString | aString beginsWith: string].! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SentenceFinderByPrefix class' category: 'Stack-Exercise'!
SentenceFinderByPrefix class
	instanceVariableNames: ''!

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'SB 5/14/2022 11:36:58'!
prefixEmptyErrorDescription
	
	^ 'Prefix is empty'! !

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'SB 5/14/2022 16:28:53'!
prefixEmptySpaceErrorDescription
	
	^ 'Prefix can not allow empty space'! !

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'SB 5/14/2022 11:51:40'!
prefixIsComposedOfMoreThanAWordErrorDescription

	^ 'Prefix should not be composed of more than a word'! !


!classDefinition: #StackStatus category: 'Stack-Exercise'!
Object subclass: #StackStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackStatus methodsFor: 'stack interaction' stamp: 'SB 5/14/2022 01:43:22'!
howDoIRemoveTheTop: aStack

	self subclassResponsibility ! !

!StackStatus methodsFor: 'stack interaction' stamp: 'SB 5/14/2022 01:45:03'!
howDoIReturnMyTop: aStack

	self subclassResponsibility 
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StackStatus class' category: 'Stack-Exercise'!
StackStatus class
	instanceVariableNames: ''!

!StackStatus class methodsFor: 'status checking' stamp: 'SB 5/14/2022 01:47:45'!
doYouAcceptMySize: StackSize

	self subclassResponsibility .! !


!classDefinition: #EmptyStack category: 'Stack-Exercise'!
StackStatus subclass: #EmptyStack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!EmptyStack methodsFor: 'stack interaction' stamp: 'SB 5/14/2022 01:45:49'!
howDoIRemoveTheTop: aStack

	aStack raiseErrorWhenRemovingTopOfEmptyStack.! !

!EmptyStack methodsFor: 'stack interaction' stamp: 'SB 5/14/2022 01:45:21'!
howDoIReturnMyTop: aStack

	aStack raiseErrorWhenGettingTopOfEmptyStack .

	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmptyStack class' category: 'Stack-Exercise'!
EmptyStack class
	instanceVariableNames: ''!

!EmptyStack class methodsFor: 'status checking' stamp: 'SB 5/14/2022 01:48:23'!
doYouAcceptMySize: StackSize

	^ StackSize = 0.! !


!classDefinition: #NotEmptyStack category: 'Stack-Exercise'!
StackStatus subclass: #NotEmptyStack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!NotEmptyStack methodsFor: 'stack interaction' stamp: 'SB 5/14/2022 01:46:07'!
howDoIRemoveTheTop: aStack

	^aStack removeTopOfStack.! !

!NotEmptyStack methodsFor: 'stack interaction' stamp: 'SB 5/14/2022 01:56:06'!
howDoIReturnMyTop: aStack

	^aStack whatIsMyTop.

	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NotEmptyStack class' category: 'Stack-Exercise'!
NotEmptyStack class
	instanceVariableNames: ''!

!NotEmptyStack class methodsFor: 'status checking' stamp: 'SB 5/14/2022 01:48:39'!
doYouAcceptMySize: StackSize

	^ StackSize > 0.! !
