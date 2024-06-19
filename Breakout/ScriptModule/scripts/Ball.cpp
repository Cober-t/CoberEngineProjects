#include "Ball.h"


void Ball::OnStart()
{
	ballStartPosition = entity.GetComponent<TransformComponent>().position;
	player = scene->FindEntityByName("Player");
	heartsPositionX = 3.3f;
	heartsPositionY = 1.8f;
	gameStarted = false;
	speed = 0.55;

	for (int i = 0; i < lifes; i++)
	{
		lifeHearts.push_back(Scene::LoadPrefab(scene, "Heart.lua"));
		lifeHearts[i].GetComponent<TransformComponent>().position.x = heartsPositionX;
		lifeHearts[i].GetComponent<TransformComponent>().position.y = heartsPositionY;
		emptyHearts.push_back(Scene::LoadPrefab(scene, "HeartEmpty.lua"));
		emptyHearts[i].GetComponent<TransformComponent>().position.x = heartsPositionX;
		emptyHearts[i].GetComponent<TransformComponent>().position.y = heartsPositionY;
		emptyHearts[i].GetComponent<TransformComponent>().position.z = -0.01;

		heartsPositionX -= 0.2f;
	}
}

void Ball::OnUpdate(float dt)
{
	auto body = (b2Body*)entity.GetComponent<Rigidbody2D>().runtimeBody;
	glm::vec2 ballPosition = entity.GetComponent<TransformComponent>().position;
	
	if (gameStarted == false)
	{
		if (Input::IsKeyDown(KeyCode::Space))
		{
			gameStarted = true;
			Physics2D::Move(body, speed, speed);
		}
		Physics2D::MoveTo(entity, player.GetComponent<TransformComponent>().position.x, ballPosition.y);
		return;
	}

	if (body->GetLinearVelocity().x == 0 && body->GetLinearVelocity().y == 0)
		Physics2D::Move(body, speed, speed);

	if (ballPosition.y > upperLimit)
	{
		Audio::Play("wall_hit.wav");
		Physics2D::Move(body, body->GetLinearVelocity().x, -speed);
	}
}

void Ball::OnBeginContact(Entity* entityContact) 
{
	auto body = (b2Body*)entity.GetComponent<Rigidbody2D>().runtimeBody;

	// Contact with players
	if (gameStarted && entityContact->GetName() == "Player")
	{
		if (Input::IsKeyDown(KeyCode::Left))
		{
			float increment = Random::Value(2, 4) * 0.1;
			if (body->GetLinearVelocity().x > 0.0f)
				Physics2D::Move(body, -body->GetLinearVelocity().x - increment, -body->GetLinearVelocity().y);
			else
				Physics2D::Move(body, body->GetLinearVelocity().x - increment, -body->GetLinearVelocity().y);
		}
		else if (Input::IsKeyDown(KeyCode::Right))
		{
			float increment = Random::Value(2, 4) * 0.1;
			if (body->GetLinearVelocity().x < 0.0f)
				Physics2D::Move(body, -body->GetLinearVelocity().x - increment, -body->GetLinearVelocity().y);
			else
				Physics2D::Move(body, body->GetLinearVelocity().x + increment, -body->GetLinearVelocity().y);
		}
		else if (body->GetLinearVelocity().x == 0.0f)
		{
			Physics2D::Move(body, body->GetLinearVelocity().x + 0.2f, -body->GetLinearVelocity().y);
		}
		else
			Physics2D::Move(body, body->GetLinearVelocity().x, -body->GetLinearVelocity().y);
	}

	// Contact with walls
	if (entityContact->GetName() == "LeftCollider")
	{
		Audio::Play("wall_hit.wav");
		Physics2D::Move(body, speed, body->GetLinearVelocity().y);
	}
	else if (entityContact->GetName() == "RightCollider")
	{
		Audio::Play("wall_hit.wav");
		Physics2D::Move(body, -speed, body->GetLinearVelocity().y);
	}
	else if (entityContact->GetName() == "RoofCollider")
	{
		Audio::Play("wall_hit.wav");
		Physics2D::Move(body, body->GetLinearVelocity().x, -body->GetLinearVelocity().y);
	}	

	// Player lifes
	if (entityContact->GetName() == "LoseTrigger")
	{
		gameStarted = false;
		Physics2D::MoveTo(player, 0, -1.6);
		Physics2D::MoveTo(entity, 0, -1.4);
		scene->DestroyEntity(lifeHearts[--lifes]);
	}

	if (lifes <= 0)
	{
		LOG_WARNING(lifes);
		Scene::Exit(scene);
	}
}


void Ball::OnEndContact(Entity* entityContact) 
{
}

void Ball::OnEvent(Event& event) 
{
}
