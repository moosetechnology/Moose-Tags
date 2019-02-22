Class {
	#name : #MooseTagsGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'tag',
		'famixEntity'
	],
	#category : #'Moose-Tags-MetamodelGenerator'
}

{ #category : #accessing }
MooseTagsGenerator class >> packageName [

	<ignoreForCoverage>
	^ 'Moose-Tags'
]

{ #category : #accessing }
MooseTagsGenerator class >> prefix [
	^ 'MT'
]

{ #category : #definition }
MooseTagsGenerator >> defineClasses [
	super defineClasses.
	tag := builder newClassNamed: #Tag
]

{ #category : #definition }
MooseTagsGenerator >> defineHierarchy [
	super defineHierarchy
]

{ #category : #definition }
MooseTagsGenerator >> defineProperties [
	super defineProperties.
	(tag property: #color type: #Object).
	(tag property: #name type: #String).
]

{ #category : #definition }
MooseTagsGenerator >> defineRelations [
	super defineRelations.
	(tag property: #parentTag) *-<> (tag property: #childrenTag)
]
