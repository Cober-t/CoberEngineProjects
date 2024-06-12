
SceneDefault
{

	Settings
	{
		SceneType = 2D
		Gravity = -3.000000
	}
	numEntities = 9

	Entity0
	{

		UUID
		{
			id = 13713134805384677376
		}

		TagComponent
		{
			tag = Ground2
		}

		TransformComponent
		{
			position = 24.000000, -2.504078, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 12.000000, 0.150000, 1.000000
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
			isSensor = 0
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\ground.png
		}
	}

	Entity1
	{

		UUID
		{
			id = 666183820361890048
		}

		TagComponent
		{
			tag = Background2
		}

		TransformComponent
		{
			position = 17.202316, 0.000000, -1.500000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 12.000000, 3.000000, 1.000000
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
			id = 850772822220106752
		}

		TagComponent
		{
			tag = Ground
		}

		TransformComponent
		{
			position = 0.000000, -2.504078, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 12.000000, 0.150000, 1.000000
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
			isSensor = 0
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
			id = 7240937317339781120
		}

		TagComponent
		{
			tag = Background
		}

		TransformComponent
		{
			position = 0.000000, 0.000000, -1.500000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 12.000000, 3.000000, 1.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\background.png
		}
	}

	Entity4
	{

		UUID
		{
			id = 2232025799515038976
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
			distance = 7.700000
			width = 1280
			height = 720
			nearClip = 0.010000
			farClip = 1000.000000
			fov = 45.000000
			perspective = 1
			mainCamera = 1
			debug = 1
		}
	}

	Entity5
	{

		UUID
		{
			id = 13028702289980180480
		}

		TagComponent
		{
			tag = ScoreText
		}

		TransformComponent
		{
			position = -4.840050, 1.800000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
		}

		TextComponent
		{
			text = Score
			color = 1.000000, 1.000000, 1.000000, 1.000000
			kerning = 0.000000
			lineSpacing = 0.000000
		}
	}

	Entity6
	{

		UUID
		{
			id = 5922345850958382080
		}

		TagComponent
		{
			tag = Roof
		}

		TransformComponent
		{
			position = -5.000000, 4.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 1
			fixedRotation = 0
		}

		BoxCollider2D
		{
			offset = 0.000000, 0.000000
			size = 5.000000, 0.200000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
			isSensor = 0
		}
	}

	Entity7
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
			scale = 0.380000, 0.240000, 1.000000
		}

		Rigidbody2D
		{
			bodyType = 0
			fixedRotation = 1
		}

		BoxCollider2D
		{
			offset = 0.000000, 0.000000
			size = 0.900000, 0.900000
			density = 1.000000
			friction = 0.500000
			restitution = 0.000000
			isSensor = 0
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\images\bird.png
		}

		NativeScriptComponent
		{
			className = BirdController
		}

		AudioComponent
		{
			audioName = explosion.wav
			audioPath = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\audio\explosion.wav
			loop = 0
		}
	}

	Entity8
	{

		UUID
		{
			id = 14207859969347141632
		}

		TagComponent
		{
			tag = Parallax
		}

		TransformComponent
		{
			position = -14.000000, 0.000000, 0.000000
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
			size = 1.000000, 5.000000
			density = 0.000000
			friction = 0.500000
			restitution = 0.000000
			isSensor = 1
		}

		NativeScriptComponent
		{
			className = Parallax
		}

		AudioComponent
		{
			audioName = marios_way.mp3
			audioPath = C:\Users\Jorge\Documents\GameEngine\Projects\FlappyBird\assets\audio\marios_way.mp3
			loop = 1
		}
	}
}
