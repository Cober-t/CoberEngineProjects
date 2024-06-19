#include "PlayerController.h"


void PlayerController::OnStart()
{
}

void PlayerController::OnUpdate(float dt)
{
	auto body = (b2Body*)entity.GetComponent<Rigidbody2D>().runtimeBody;
	float positionX = entity.GetComponent<TransformComponent>().position.x;

	if (Input::IsKeyDown(KeyCode::Left) && positionX > leftLimit)
	{
		Physics2D::Move(body, -1, 0);
	}
	else if (Input::IsKeyDown(KeyCode::Right) && positionX < rightLimit)
	{
		Physics2D::Move(body, 1, 0);
	}
	else
		Physics2D::Move(body, 0, 0);
}

void PlayerController::OnBeginContact(Entity* entityContact) 
{
}

void PlayerController::OnEndContact(Entity* entityContact) 
{
}

void PlayerController::OnEvent(Event& event) 
{
}