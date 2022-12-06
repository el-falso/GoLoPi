extends Node

var level: int = 1
var points: int = 0
var amoutLockpicks: int = 10
var skillLockpicking: float = 0.1


static func generateCode(length: int) -> PackedInt32Array:
	var rng := RandomNumberGenerator.new()
	var codeArray : PackedInt32Array = []
	
	rng.randomize()
	
	while codeArray.size() < length:
		var codeDir = rng.randi_range(-1, 1)
		if codeDir != 0:
			codeArray.append(codeDir)
	#for i in range(length):
	#	codeArray.append(rng.randi_range(0, 1))
	
	return codeArray
	
