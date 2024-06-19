
BricksSandbox
{

	Settings
	{
		SceneType = 2D
		Gravity = 0.000000
	}
	numEntities = 12

	Entity0
	{

		UUID
		{
			id = 6711192834977143753
		}

		TagComponent
		{
			tag = BaseVioletBrick
		}

		TransformComponent
		{
			position = -3.000000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 0.000000, 1.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}

		ParticleEmitterComponent
		{
			positionVariation = 2.000000, 1.500000
			rotation = 0.000000
			sizeBegin = 0.800000
			sizeEnd = 0.200000
			sizeVariation = 0.000000
			velocity = 0.000000, -0.005000
			velocityVariation = 0.000000, 0.001000
			colorBegin = 1.000000, 1.000000, 1.000000, 1.000000
			colorEnd = 1.000000, 1.000000, 1.000000, 1.000000
			lifeTime = 0.400000
			lifeRemaining = 1.000000
			rate = 8
			active = 1
			loop = 1
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\particle.png
			issubtexture = 0.000000
		}
	}

	Entity1
	{

		UUID
		{
			id = 12786594538808763186
		}

		TagComponent
		{
			tag = BaseBlueBrick
		}

		TransformComponent
		{
			position = -1.500000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 0.000000, 7.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}

		ParticleEmitterComponent
		{
			positionVariation = 2.000000, 1.500000
			rotation = 0.000000
			sizeBegin = 0.800000
			sizeEnd = 0.200000
			sizeVariation = 0.000000
			velocity = 0.000000, -0.005000
			velocityVariation = 0.000000, 0.001000
			colorBegin = 1.000000, 1.000000, 1.000000, 1.000000
			colorEnd = 1.000000, 1.000000, 1.000000, 1.000000
			lifeTime = 0.400000
			lifeRemaining = 1.000000
			rate = 8
			active = 1
			loop = 1
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\particle.png
			issubtexture = 0.000000
		}
	}

	Entity2
	{

		UUID
		{
			id = 349854564336187967
		}

		TagComponent
		{
			tag = BaseYellowBrick
		}

		TransformComponent
		{
			position = -1.000000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 4.000000, 9.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}

		ParticleEmitterComponent
		{
			positionVariation = 2.000000, 1.500000
			rotation = 0.000000
			sizeBegin = 0.800000
			sizeEnd = 0.200000
			sizeVariation = 0.000000
			velocity = 0.000000, -0.005000
			velocityVariation = 0.000000, 0.001000
			colorBegin = 1.000000, 1.000000, 1.000000, 1.000000
			colorEnd = 1.000000, 1.000000, 1.000000, 1.000000
			lifeTime = 0.400000
			lifeRemaining = 1.000000
			rate = 8
			active = 1
			loop = 1
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\particle.png
			issubtexture = 0.000000
		}
	}

	Entity3
	{

		UUID
		{
			id = 305087566524961147
		}

		TagComponent
		{
			tag = BaseRedBrick
		}

		TransformComponent
		{
			position = -2.500000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 0.000000, 3.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}

		ParticleEmitterComponent
		{
			positionVariation = 2.000000, 1.500000
			rotation = 0.000000
			sizeBegin = 0.800000
			sizeEnd = 0.200000
			sizeVariation = 0.000000
			velocity = 0.000000, -0.005000
			velocityVariation = 0.000000, 0.001000
			colorBegin = 1.000000, 1.000000, 1.000000, 1.000000
			colorEnd = 1.000000, 1.000000, 1.000000, 1.000000
			lifeTime = 0.400000
			lifeRemaining = 1.000000
			rate = 8
			active = 1
			loop = 1
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\particle.png
			issubtexture = 0.000000
		}
	}

	Entity4
	{

		UUID
		{
			id = 9430817169777719296
		}

		TagComponent
		{
			tag = BaseGreenBrick
		}

		TransformComponent
		{
			position = -2.000000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 0.000000, 5.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}

		ParticleEmitterComponent
		{
			positionVariation = 2.000000, 1.500000
			rotation = 0.000000
			sizeBegin = 0.800000
			sizeEnd = 0.200000
			sizeVariation = 0.000000
			velocity = 0.000000, -0.005000
			velocityVariation = 0.000000, 0.001000
			colorBegin = 1.000000, 1.000000, 1.000000, 1.000000
			colorEnd = 1.000000, 1.000000, 1.000000, 1.000000
			lifeTime = 0.400000
			lifeRemaining = 1.000000
			rate = 8
			active = 1
			loop = 1
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\particle.png
			issubtexture = 0.000000
		}
	}

	Entity5
	{

		UUID
		{
			id = 3308645835673116160
		}

		TagComponent
		{
			tag = SpecialBrick1
		}

		TransformComponent
		{
			position = 0.500000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 1.000000, 10.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}
	}

	Entity6
	{

		UUID
		{
			id = 2375605859153879552
		}

		TagComponent
		{
			tag = BaseGrayBrick
		}

		TransformComponent
		{
			position = 0.000000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 2.000000, 8.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}
	}

	Entity7
	{

		UUID
		{
			id = 10604241882364805120
		}

		TagComponent
		{
			tag = SpecialBrick2
		}

		TransformComponent
		{
			position = 1.000000, 1.500000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
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
				indices = 5.000000, 10.000000
				cellsize = 32.000000, 16.000000
				spritesize = 1.000000, 1.000000
			}
		}

		NativeScriptComponent
		{
			className = BrickScript
		}
	}

	Entity8
	{

		UUID
		{
			id = 35533562310188732
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
			distance = 3.000000
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

	Entity9
	{

		UUID
		{
			id = 10011301923898120192
		}

		TagComponent
		{
			tag = Bricks
		}

		TransformComponent
		{
			position = 0.000000, -1.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 1.000000, 1.000000, 1.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\blocks.png
			issubtexture = 0.000000
		}
	}

	Entity10
	{

		UUID
		{
			id = 11440743314966620160
		}

		TagComponent
		{
			tag = Heart
		}

		TransformComponent
		{
			position = 0.000000, 1.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 2.000000, 2.000000, 1.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\hearts.png
			issubtexture = 1.000000

			subtexture
			{
				indices = 1.000000, 0.000000
				cellsize = 10.000000, 9.000000
				spritesize = 1.000000, 1.000000
			}
		}
	}

	Entity11
	{

		UUID
		{
			id = 11424205408683954176
		}

		TagComponent
		{
			tag = HeartFill
		}

		TransformComponent
		{
			position = 0.301193, 1.000000, 0.000000
			rotation = 0.000000, 0.000000, 0.000000
			scale = 2.000000, 2.000000, 1.000000
		}

		Render2DComponent
		{
			color = 1.000000, 1.000000, 1.000000, 1.000000
			shape2D = Sprite
			texture = C:\Users\Jorge\Documents\GameEngine\Projects\Breakout\assets\images\hearts.png
			issubtexture = 1.000000

			subtexture
			{
				indices = 0.000000, 0.000000
				cellsize = 10.000000, 9.000000
				spritesize = 1.000000, 1.000000
			}
		}
	}
}