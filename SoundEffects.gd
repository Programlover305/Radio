extends Node

@export var sound_effects: Array[AudioStream]

@onready var sfx_player: AudioStreamPlayer2D = $TextureButton/SFX



func _on_texture_button_pressed() -> void:
	var random_sound = sound_effects.pick_random()
	sfx_player.stream = random_sound
	sfx_player.play()
