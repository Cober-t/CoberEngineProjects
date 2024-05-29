
FlappyBird
{
	numEntities = 4

	Settings
	{
		SceneType = 2D
		Gravity = -9.800000
	}

	Entity0
	{

		UUID
		{
			id = 15912293208814413943
		}

		TagComponent
		{
			tag = Entity
		}

		TransformComponent
		{
			position = 3.492575, -0.895796, 0.325812
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 2.327332, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 0
			fixedRotation = 0
		}

		BoxCollider2D
		{
			offset = -0.125000, 0.000000
			size = 0.750000, 0.900000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\pipe.png
		}
	}

	Entity1
	{

		UUID
		{
			id = 666183820361890027
		}

		TagComponent
		{
			tag = Background
		}

		TransformComponent
		{
			position = 0.000000, 0.000000, 0.686601
			rotation = 0.000000, 0.000000, 0.000000
			scale = 15.000000, 5.000000, 1.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\background.png
		}
	}

	Entity2
	{

		UUID
		{
			id = 13713134805384677376
		}

		TagComponent
		{
			tag = Ground
		}

		TransformComponent
		{
			position = 0.000000, -2.657843, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 10.000000, 0.660732, 1.000000
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
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\ground.png
		}
	}

	Entity3
	{

		UUID
		{
			id = 1808280617128218624
		}

		TagComponent
		{
			tag = Bird
		}

		TransformComponent
		{
			position = -3.092605, 0.743435, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.500000, 0.400000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 2
			fixedRotation = 0
		}

		BoxCollider2D
		{
			offset = 0.000000, 0.000000
			size = 0.900000, 0.900000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\bird.png
		}
	}
}
