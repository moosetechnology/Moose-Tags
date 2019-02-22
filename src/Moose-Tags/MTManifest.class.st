Class {
	#name : #MTManifest,
	#superclass : #PackageManifest,
	#category : #'Moose-Tags'
}

{ #category : #'class initialization' }
MTManifest class >> initialize [
	MTTag addSlot: (FMMany named: #taggedEntities inverse: #tags inClass: MooseEntity).
	MooseEntity addSlot: (FMMany named: #tags inverse: #taggedEntities inClass: MTTag)
]