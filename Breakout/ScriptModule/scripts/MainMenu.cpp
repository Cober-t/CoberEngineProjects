#include "MainMenu.h"


void MainMenu::OnStart()
{
	background = scene->FindEntityByName("Background");
	startButton = scene->FindEntityByName("Start");
	exitButton = scene->FindEntityByName("Exit");
	highlighted = 0;

	auto& backgroundSize = background.GetComponent<TransformComponent>().scale;
	auto& camera = entity.GetComponent<CameraComponent>();
	// Scale background to the camera
	backgroundSize.x = camera.width / (302 - 1);
	backgroundSize.y = camera.height / (129 - 1);

	Audio::Play("music.wav", true);
}

void MainMenu::OnUpdate(float dt)
{

	if (Input::IsKeyPressed(KeyCode::Up))
	{
		Audio::Play("select.wav");
		highlighted = 0;
		startButton.GetComponent<TextComponent>().Color = glm::vec4(0.0f, 0.4f, 0.8f, 1.0f);
		exitButton.GetComponent<TextComponent>().Color = glm::vec4(1.0f);
	}
	else if (Input::IsKeyPressed(KeyCode::Down))
	{
		Audio::Play("select.wav");
		highlighted = 1;
		startButton.GetComponent<TextComponent>().Color = glm::vec4(1.0f);
		exitButton.GetComponent<TextComponent>().Color = glm::vec4(0.0f, 0.4f, 0.8f, 1.0f);
	}

	if (Input::IsKeyPressed(KeyCode::Enter))
	{
		Audio::Play("confirm.wav");
		if (highlighted == 0)
		{
			Scene::Reload(scene, "GameScene.lua");
		}
		else
		{
			Scene::Exit(scene);
		}
	}
}

void MainMenu::OnBeginContact(Entity* entityContact) 
{

}

void MainMenu::OnEndContact(Entity* entityContact) 
{
}

void MainMenu::OnEvent(Event& event) 
{
}