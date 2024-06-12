#include "BirdController.h"


void BirdController::OnStart()
{
	scoreEntityHandler = scene->FindEntityByName("ScoreText");
}

void BirdController::OnUpdate(float dt)
{
	auto body = (b2Body*)entity.GetComponent<Rigidbody2D>().runtimeBody;
	
	if (Input::IsKeyDown(KeyCode::Space) && addImpulse)
	{
		if (gameStarted == false)
		{
			Physics2D::SetBodyType(entity, BodyType::Dynamic);
			gameStarted = true;
		}
		addImpulse = false;
		Physics2D::ApplyForceY(body, 0);
		Physics2D::ApplyForceY(body, impulse);
	}
	else if (Input::IsKeyDown(KeyCode::Space) == false)
	{
		addImpulse = true;
	}
}

void BirdController::OnBeginContact(Entity* entityContact) 
{
	if (entityContact->GetName() == "PipeTop" || entityContact->GetName() == "PipeBottom" || entityContact->GetName() == "Ground" || entityContact->GetName() == "Ground2")
	{
		Audio::Play(entity.GetComponent<AudioComponent>().audioName);
		Scene::Reload(scene);
	}
}

void BirdController::OnEndContact(Entity* entityContact) 
{
	if (entityContact->GetName() == "Score")
	{
		Audio::Play(entityContact->GetComponent<AudioComponent>().audioName);
		score += 1;
		scoreEntityHandler.GetComponent<TextComponent>().Text = std::to_string(score);
	}
}