Class {
	#name : #TestMooseTag,
	#superclass : #TestCase,
	#category : #'Moose-Tags-Tests'
}

{ #category : #tests }
TestMooseTag >> testAddEntityToTag [
	| tag entity |
	tag := MTTag new.
	entity := MooseEntity new.
	tag taggedEntities add: entity.
	self assert: entity tags asArray equals: { tag }.
	self assert: tag taggedEntities asArray equals: { entity }
]

{ #category : #tests }
TestMooseTag >> testCreateTagHierarchy [
	| parentTag childTag |
	parentTag := MTTag new.
	childTag := MTTag new.
	parentTag childrenTags add: childTag.
	self assert: parentTag childrenTags asArray equals: { childTag }.
	self assert: childTag parentTag equals: parentTag
]

{ #category : #tests }
TestMooseTag >> testSetParentTag [
	| parentTag childTag |
	parentTag := MTTag new.
	childTag := MTTag new.
	childTag parentTag: parentTag.
	self assert: parentTag childrenTags asArray equals: { childTag }.
	self assert: childTag parentTag equals: parentTag
]

{ #category : #tests }
TestMooseTag >> testTagAnEntity [
	| tag entity |
	tag := MTTag new.
	entity := MooseEntity new.
	entity tags add: tag.
	self assert: entity tags asArray equals: { tag }.
	self assert: tag taggedEntities asArray equals: { entity }
]
