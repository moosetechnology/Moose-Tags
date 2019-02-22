Class {
	#name : #MTTag,
	#superclass : #MooseEntity,
	#instVars : [
		'#childrenTags => FMMany type: #MTTag opposite: #parentTag',
		'#color',
		'#name',
		'#parentTag => FMOne type: #MTTag opposite: #childrenTags',
		'#taggedEntities => FMMany type: #MooseEntity opposite: #tags'
	],
	#category : #'Moose-Tags-Entities'
}

{ #category : #meta }
MTTag class >> annotation [

	<MSEClass: #Tag super: #MooseEntity>
	<package: #'Moose-Tags'>
	<generated>
	^self
]

{ #category : #generator }
MTTag class >> generatedSlotNames [
	<generated>
	'MTTag class>>#generatedSlotNames'.
	^ #(childrenTags color name parentTag)
]

{ #category : #generator }
MTTag class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'class initialization' }
MTTag class >> initialize [
	self
		slotNamed: #taggedEntities
		ifFound: [  ]
		ifNone: [ 
			MTTag	addSlot: (FMMany named: #taggedEntities inverse: #tags inClass: MooseEntity).
			MooseEntity addSlot: (FMMany named: #tags inverse: #taggedEntities inClass: MTTag).
			(RBAbstractInstanceVariableRefactoring variable: #taggedEntities class: MTTag) execute.
			(RBAbstractInstanceVariableRefactoring variable: #tags 	class: MooseEntity) execute
		]
]

{ #category : #meta }
MTTag class >> metamodel [

	<generated>
	^ (self class environment at: #MooseTagsGenerator) metamodel
]

{ #category : #meta }
MTTag class >> requirements [

	<generated>
	^ { MTTag }
]

{ #category : #accessing }
MTTag >> belongsTo [

	<generated>
	^ self parentTag

]

{ #category : #accessing }
MTTag >> belongsTo: anObject [

	<generated>
	self parentTag: anObject

]

{ #category : #accessing }
MTTag >> childrenTags [

	<generated>
	^ childrenTags
]

{ #category : #accessing }
MTTag >> childrenTags: anObject [

	<generated>
	childrenTags value: anObject

]

{ #category : #navigation }
MTTag >> childrenTagsGroup [

	<generated>
	<navigation: 'ChildrenTags'>
	^ MooseGroup
			withAll: (self childrenTags asSet)
]

{ #category : #accessing }
MTTag >> color [

	<MSEProperty: #color type: #Object>
	<generated>
	^ color
]

{ #category : #accessing }
MTTag >> color: anObject [

	<generated>
	color := anObject

]

{ #category : #accessing }
MTTag >> name [

	<MSEProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
MTTag >> name: anObject [

	<generated>
	name := anObject

]

{ #category : #accessing }
MTTag >> parentTag [

	<generated>
	<container>

	^ parentTag
]

{ #category : #accessing }
MTTag >> parentTag: anObject [

	<generated>
	parentTag := anObject

]

{ #category : #navigation }
MTTag >> parentTagGroup [

	<generated>
	<navigation: 'ParentTag'>
	^ MooseGroup
			with: (self parentTag)
]

{ #category : #accessing }
MTTag >> taggedEntities [
	^ taggedEntities
]

{ #category : #accessing }
MTTag >> taggedEntities: anObject [
	taggedEntities := anObject
]
