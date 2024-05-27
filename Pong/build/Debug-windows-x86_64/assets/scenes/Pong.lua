
Pong
{
	numEntities = 5

	Settings
	{
		SceneType = 2D
		Gravity = 0.000000
	}

	Entity0
	{

		UUID
		{
			id = 12117999765914850337
		}

		TagComponent
		{
			tag = Player2Goal
		}

		TransformComponent
		{
			position = 5.700000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.500000, 4.000000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 1
			fixedRotation = 0
		}

		BoxCollider2D
		{
			offset = 0.000000, 0.000000
			size = 1.000000, 1.000000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
		}

		Render2DComponent
		{
			color = 0.377132, 0.945946, 0.241052, 1.000000
			shape2D = Quad
			fill = 0
		}
	}

	Entity1
	{

		UUID
		{
			id = 1255100070532801930
		}

		TagComponent
		{
			tag = Player2
		}

		TransformComponent
		{
			position = 5.000000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.100000, 0.700000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 1
			fixedRotation = 0
		}

		BoxCollider2D
		{
			offset = 0.000000, 0.000000
			size = 1.000000, 1.000000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Quad
			fill = 1
		}

		NativeScriptComponent
		{
			className = Player2Controller
		}
	}

	Entity2
	{

		UUID
		{
			id = 6145885835688081408
		}

		TagComponent
		{
			tag = Player1
		}

		TransformComponent
		{
			position = -5.000000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.100000, 0.700000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 1
			fixedRotation = 0
		}

		BoxCollider2D
		{
			offset = 0.000000, 0.000000
			size = 1.000000, 1.000000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Quad
			fill = 1
		}

		NativeScriptComponent
		{
			className = Player1Controller
		}
	}

	Entity3
	{

		UUID
		{
			id = 8934448035986445312
		}

		TagComponent
		{
			tag = Ball
		}

		TransformComponent
		{
			position = 0.000000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.150000, 0.150000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 2
			fixedRotation = 0
		}

		CircleCollider2D
		{
			offset = 0.000000, 0.000000
			radius = 0.500000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Circle
			thickness = 1.000000
			fade = 0.005000
		}

		NativeScriptComponent
		{
			className = Ball
		}
	}

	Entity4
	{

		UUID
		{
			id = 16475350207495522304
		}

		TagComponent
		{
			tag = Player1Goal
		}

		TransformComponent
		{
			position = -5.700000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.500000, 4.000000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 1
			fixedRotation = 0
		}

		BoxCollider2D
		{
			offset = 0.000000, 0.000000
			size = 1.000000, 1.000000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
		}

		Render2DComponent
		{
			color = 0.377132, 0.945946, 0.241052, 1.000000
			shape2D = Quad
			fill = 0
		}
	}
}
