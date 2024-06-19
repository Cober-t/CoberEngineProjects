#include "GameManager.h"


void GameManager::OnStart()
{
	background = scene->FindEntityByName("Background");
	player = scene->FindEntityByName("Player");
	camera = scene->FindEntityByName("Camera");

	auto& backgroundSize = background.GetComponent<TransformComponent>().scale;
	auto& cameraComponent = camera.GetComponent<CameraComponent>();
	// Scale background to the camera
	backgroundSize.x = cameraComponent.width / (302 - 1);
	backgroundSize.y = cameraComponent.height / (129 - 1);

	tiers = prefabs.size();
	emptySpace = false;
	Audio::Play("music.wav", true);
	GenerateLevel();
}

void GameManager::OnUpdate(float dt)
{

}

void GameManager::OnBeginContact(Entity* entityContact) 
{

}

void GameManager::OnEndContact(Entity* entityContact) 
{
}


void GameManager::OnEvent(Event& event) 
{
}



void GameManager::GenerateLevel()
{
	for (float y = 1.5f; y >= 0.8f; y -= 0.2f)
	{
		for (float x = -3.0f; x <= 3.1f; x += 0.4f)
		{
			auto& brick = Scene::LoadPrefab(scene, prefabs[Random::Value(0, prefabs.size() - 1)]);
			brick.GetComponent<TransformComponent>().position.x = x;
			brick.GetComponent<TransformComponent>().position.y = y;
		}
	}
}
