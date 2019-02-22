Class {
	#name : #MTTag,
	#superclass : #MooseEntity,
	#instVars : [
		'#color',
		'#name',
		'#parentTag => FMOne type: #MTTag opposite: #childrenTag',
		'#childrenTag => FMMany type: #MTTag opposite: #parentTag'
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
	^ #(childrenTag color name parentTag)
]

{ #category : #generator }
MTTag class >> generatedTraitNames [
	<generated>
	^ #()
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
MTTag >> childrenTag [

	<generated>
	^ childrenTag
]

{ #category : #accessing }
MTTag >> childrenTag: anObject [

	<generated>
	childrenTag value: anObject

]

{ #category : #navigation }
MTTag >> childrenTagGroup [

	<generated>
	<navigation: 'ChildrenTag'>
	^ MooseGroup
			withAll: (self childrenTag asSet)
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
