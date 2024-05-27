#include <Engine.h>
#include <EntryPoint.h>

#include "FlappyBird.h"

using namespace Cober;


class FlappyBirdApp: public EngineApp
{
public:

	FlappyBirdApp(const AppSpecification& specification) : EngineApp(specification) 
	{
		PushLayer(new FlappyBird());
		EngineApp::Get().SetGameState(EngineApp::GameState::PLAY);
	}

	~FlappyBirdApp() 
	{
		LOG_INFO("FlappyBird Destructor!");
	}
};

Cober::EngineApp* Cober::CreateApplication(Cober::AppCommandLineArgs args)
{
	AppSpecification spec;
	spec.Name = "FlappyBird";
	spec.WorkingDirectory = "./";
	spec.Width = 1280;
	spec.Height = 720;
	spec.CommandLineArgs = args;

	LOG_INFO("FlappyBird Constructor!");
	return new FlappyBirdApp(spec);
}