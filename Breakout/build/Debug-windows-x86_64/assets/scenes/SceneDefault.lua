
SceneDefault
{

	Settings
	{
		SceneType = 2D
		Gravity = 0.000000
	}
	numEntities = 5

	Entity0
	{

		UUID
		{
			id = 15790550996833163264
		}

		TagComponent
		{
			tag = Title
		}

		TransformComponent
		{
			position = -1.600000, 1.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.700000, 0.700000, 1.000000
		}

		TextComponent
		{
			font = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\fonts\font.ttf
			text = BREAKOUT
			color = 1.000000, 1.000000, 1.000000, 1.000000
			kerning = 0.000000
			lineSpacing = 0.000000
		}
	}

	Entity1
	{

		UUID
		{
			id = 17731108172934002688
		}

		TagComponent
		{
			tag = Start
		}

		TransformComponent
		{
			position = -0.900000, -0.800000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.600000, 0.500000, 1.000000
		}

		TextComponent
		{
			font = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\fonts\font.ttf
			text = START
			color = 1.000000, 1.000000, 1.000000, 1.000000
			kerning = 0.000000
			lineSpacing = 0.000000
		}
	}

	Entity2
	{

		UUID
		{
			id = 2997020509254490624
		}

		TagComponent
		{
			tag = Background
		}

		TransformComponent
		{
			position = 0.000000, 0.000000, -0.900000
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

	Entity3
	{

		UUID
		{
			id = 11345154170369597440
		}

		TagComponent
		{
			tag = Exit
		}

		TransformComponent
		{
			position = -0.600000, -1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 0.500000, 0.500000, 1.000000
		}

		TextComponent
		{
			font = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\fonts\font.ttf
			text = EXIT
			color = 1.000000, 1.000000, 1.000000, 1.000000
			kerning = 0.000000
			lineSpacing = 0.000000
		}
	}

	Entity4
	{

		UUID
		{
			id = 11973193907658811392
		}

		TagComponent
		{
			tag = MainMenuManager
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
			mainCamera = 1
			debug = 1
		}

		NativeScriptComponent
		{
			className = MainMenu
		}
	}
}
