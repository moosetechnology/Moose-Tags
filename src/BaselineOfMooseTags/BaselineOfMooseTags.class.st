Class {
	#name : #BaselineOfMooseTags,
	#superclass : #BaselineOf,
	#category : #BaselineOfMooseTags
}

{ #category : #baselines }
BaselineOfMooseTags >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec]
]

{ #category : #baselines }
BaselineOfMooseTags >> defineDependencies: spec [ 
]

{ #category : #baselines }
BaselineOfMooseTags >> defineGroups: spec [
	spec
		group: 'default' with: #('core' 'tests');
		group: 'core' with: #('Moose-Tags');
		group: 'tests' with: #('Moose-Tags-Tests');
		group: 'generator' with: #('Moose-Tags-Generator')
]

{ #category : #baselines }
BaselineOfMooseTags >> definePackages: spec [
	spec
		repository: 'github://moosetechnology/Moose-Tags';
		package: 'Moose-Tags';
		package: 'Moose-Tags-Generator';
		package: 'Moose-Tags-Tests' with: [ spec requires: #('Moose-Tags') ]
]
