#include <Engine.h>
#include <EntryPoint.h>

#include "Breakout.h"

using namespace Cober;


class BreakoutApp: public EngineApp
{
public:

	BreakoutApp(const AppSpecification& specification) : EngineApp(specification) 
	{
		PushLayer(new Breakout());
		EngineApp::Get().SetGameState(EngineApp::GameState::PLAY);
	}

	~BreakoutApp() 
	{
		LOG_INFO("Breakout Destructor!");
	}
};

Cober::EngineApp* Cober::CreateApplication(Cober::AppCommandLineArgs args)
{
	AppSpecification spec;
	spec.Name = "Breakout";
	spec.WorkingDirectory = "C:/Users/Jorge/Documents/GameEngine/Projects/Breakout";
	spec.Width = 1280;
	spec.Height = 720;
	spec.CommandLineArgs = args;

	LOG_INFO("Breakout Constructor!");
	return new BreakoutApp(spec);
}