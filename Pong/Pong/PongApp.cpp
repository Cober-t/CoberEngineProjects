#include <Windows.h>
#include <Engine.h>
#include <EntryPoint.h>

#include "Pong.h"

using namespace Cober;


class PongApp: public EngineApp
{
public:

	PongApp(const AppSpecification& specification) : EngineApp(specification) 
	{
		PushLayer(new Pong());
		EngineApp::Get().SetGameState(EngineApp::GameState::PLAY);
	}

	~PongApp() 
	{
		LOG_INFO("Game Destructor!");
	}
};

Cober::EngineApp* Cober::CreateApplication(Cober::AppCommandLineArgs args)
{
	AppSpecification spec;
	spec.Name = "PONG";
	spec.WorkingDirectory = "./";
	spec.Width = 1280;
	spec.Height = 720;
	spec.CommandLineArgs = args;

	LOG_INFO("Game Constructor!");
	return new PongApp(spec);
}