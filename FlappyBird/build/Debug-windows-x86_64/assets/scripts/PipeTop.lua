
PipeTop
{

	TransformComponent
	{
		position = -9.000000, 4.700000, -0.910000
		rotation = 0.000000, 0.000000, -3.141593
		scale = -0.700000, 2.880028, 1.000000
	}

	Rigidbody2D
	{
		bodyType = 2
		fixedRotation = 0
	}

	BoxCollider2D
	{
		offset = 0.000000, 0.000000
		size = 1.000000, 1.000000
		density = 0.000000
		friction = 0.500000
		restitution = 0.000000
		isSensor = 0
	}

	Render2DComponent
	{
		color = 1.000000, 1.000000, 1.000000, 1.000000
		shape2D = Sprite
		texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\pipe.png
	}

	NativeScriptComponent
	{
		className = MovePipe
	}
}
