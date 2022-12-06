extends GridContainer

@onready var level := $"%LevelNum" as Label
@onready var lockpicks := $"%LockpicksNum" as Label
@onready var points := $"%PointsNum" as Label
@onready var skill := $"%SkillNum" as Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	level.text = str(Global.level)
	lockpicks.text = str(Global.amoutLockpicks)
	points.text = str(Global.points)
	skill.text = str(Global.skillLockpicking)

	
