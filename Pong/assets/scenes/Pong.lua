
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
			id = 14375166516157605888
		}

		TagComponent
		{
			tag = Player2
		}

		TransformComponent
		{
			position = 4.000000, 0.000000, 0.000000
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

	Entity1
	{

		UUID
		{
			id = 12125560304790982656
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

	Entity2
	{

		UUID
		{
			id = 3047168209984886784
		}

		TagComponent
		{
			tag = Player2Goal
		}

		TransformComponent
		{
			position = 6.100000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 2.000000, 5.000000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 0
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
			color = 0.518823, 0.911197, 0.200534, 1.000000
			shape2D = Quad
			fill = 0
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
			id = 1912786802562010112
		}

		TagComponent
		{
			tag = Player1
		}

		TransformComponent
		{
			position = -4.500000, 0.000000, 0.000000
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

	Entity4
	{

		UUID
		{
			id = 7774091189576322048
		}

		TagComponent
		{
			tag = Player1Goal
		}

		TransformComponent
		{
			position = -6.600000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 2.000000, 5.000000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 0
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
			color = 0.518823, 0.911197, 0.200534, 1.000000
			shape2D = Quad
			fill = 0
		}

		NativeScriptComponent
		{
			className = Player1Controller
		}
	}
}
