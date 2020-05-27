extends Area2D
signal hit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 400;
var screenSize;
# Called when the node enters the scene tree for the first time.
func _ready():
	screenSize = get_viewport_rect().size;
	#pass # Replace with function body.

func start(pos):
	position = pos;
	show();
	$CollisionShape2D.disabled = false;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2();
	if Input.is_key_pressed(KEY_D):
		velocity.x += 1;
	if Input.is_key_pressed(KEY_A):
		velocity.x -= 1;
	if Input.is_key_pressed(KEY_S):
		velocity.y += 1;
	if Input.is_key_pressed(KEY_W):
		velocity.y -= 1;
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed;
		$AnimatedSprite.play();
	else:
		$AnimatedSprite.stop();
		
	position += velocity * delta;
	position.x = clamp(position.x, 0, screenSize.x);
	position.y = clamp(position.y, 0, screenSize.y);
	
	if velocity.x != 0:
		$AnimatedSprite.flip_v = false;
		$AnimatedSprite.flip_h = velocity.x < 0;
	if velocity.y != 0:
		$AnimatedSprite.flip_v = velocity.y > 0;
#	pass


func _on_Player_body_entered(body):
	hide();
	emit_signal("hit");
	$CollisionShape2D.set_deferred("disabled", true);
	#pass # Replace with function body.

func _on_Player_hit():
	$ScoreTimer.stop();
	$MobTimer.stop();
	pass # Replace with function body.
	
func newGame():
	score = 0;
	$Player.start($StartPosition.position);
	$StartTimer.start();
