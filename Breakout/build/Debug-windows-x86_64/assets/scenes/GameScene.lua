
GameScene
{

	Settings
	{
		SceneType = 2D
		Gravity = 0.000000
	}
	numEntities = 10

	Entity0
	{

		UUID
		{
			id = 9257668447465431040
		}

		TagComponent
		{
			tag = LeftCollider
		}

		TransformComponent
		{
			position = -3.700000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.100000, 3.000000, 1.000000
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
			friction = 0.000000
			restitution = 1.000000
			isSensor = 0
		}
	}

	Entity1
	{

		UUID
		{
			id = 10148502001556019200
		}

		TagComponent
		{
			tag = RoofCollider
		}

		TransformComponent
		{
			position = 0.000000, 2.100000, 0.000000
			rotation = 0.000000, 0.000000, 1.570796
			scale = 0.099999, 4.999998, 1.000000
		}
	}

	Entity2
	{

		UUID
		{
			id = 11973193907658811392
		}

		TagComponent
		{
			tag = Camera
		}

		TransformComponent
		{
			position = 0.000000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
		}

		CameraComponent
		{
			distance = 5.000000
			width = 1280
			height = 720
			nearClip = 0.010000
			farClip = 1000.000000
			fov = 45.000000
			perspective = 1
			mainCamera = 0
			debug = 1
		}
	}

	Entity3
	{

		UUID
		{
			id = 5514949423843807232
		}

		TagComponent
		{
			tag = Background
		}

		TransformComponent
		{
			position = 0.000000, 0.000000, -1.500000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 7.000000, 10.000000, 1.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\background.png
			issubtexture = 0.000000
		}
	}

	Entity4
	{

		UUID
		{
			id = 4130686091644626432
		}

		TagComponent
		{
			tag = Ball
		}

		TransformComponent
		{
			position = 0.000000, -1.400000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 2
			fixedRotation = 0
		}

		CircleCollider2D
		{
			offset = 0.000000, 0.000000
			radius = 0.050000
			density = 1.000000
			friction = 0.000000
			restitution = 1.000000
			isSensor = 0
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\blocks.png
			issubtexture = 1.000000

			subtexture
			{
				indices = 12.000000, 41.000000
				cellsize = 8.000000, 8.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = Ball
		}
	}

	Entity5
	{

		UUID
		{
			id = 10125826566516291584
		}

		TagComponent
		{
			tag = GameManager
		}

		TransformComponent
		{
			position = 0.000000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
		}

		NativeScriptComponent
		{
			className = GameManager
		}
	}

	Entity6
	{

		UUID
		{
			id = 2384233393159012352
		}

		TagComponent
		{
			tag = RightCollider
		}

		TransformComponent
		{
			position = 3.700000, 0.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.100000, 3.000000, 1.000000
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
			friction = 0.000000
			restitution = 1.000000
			isSensor = 0
		}
	}

	Entity7
	{

		UUID
		{
			id = 12864000350286022656
		}

		TagComponent
		{
			tag = Score
		}

		TransformComponent
		{
			position = -3.500000, 1.710000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.300000, 0.300000, 1.000000
		}

		TextComponent
		{
			font = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\fonts\font.ttf
			text = 0
			color = 1.000000, 1.000000, 1.000000, 1.000000
			kerning = 0.000000
			lineSpacing = 0.000000
		}
	}

	Entity8
	{

		UUID
		{
			id = 15570329495148531712
		}

		TagComponent
		{
			tag = LoseTrigger
		}

		TransformComponent
		{
			position = 0.000000, -1.850000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 4.000000, 0.100000, 1.000000
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
			density = 0.000000
			friction = 0.500000
			restitution = 0.000000
			isSensor = 1
		}
	}

	Entity9
	{

		UUID
		{
			id = 15790550996833163264
		}

		TagComponent
		{
			tag = Player
		}

		TransformComponent
		{
			position = 0.000000, -1.600000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\blocks.png
			issubtexture = 1.000000

			subtexture
			{
				indices = 2.000000, 1.000000
				cellsize = 16.000000, 16.000000
				spritesize = 4.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = PlayerController
		}
	}
}
