#include "Breakout.h"


Breakout::Breakout() : Layer("Breakout application") 
{
	m_Camera = CreateRef<GameCamera>(45.0f, EngineApp::Get().GetWindow().GetWidth(), EngineApp::Get().GetWindow().GetHeight(), 0.01f, 1000.0f);
}


void Breakout::OnAttach() 
{
	m_ActiveScene = Scene::Load("SceneDefault.lua");
}


void Breakout::OnDetach() 
{
	m_ActiveScene->OnSimulationStop();
	m_ActiveScene = nullptr;
	m_Camera = nullptr;
	LOG_INFO("Detached Breakout application Layer!");
}


void Breakout::OnUpdate(Unique<Timestep>& ts) 
{
	RenderGlobals::SetClearColor(46, 47, 52);
	RenderGlobals::Clear();
	m_Camera->OnUpdate(ts);
	m_ActiveScene->OnUpdateSimulation(ts, m_Camera);
}


void Breakout::OnEvent(Event& event) 
{
	m_Camera->OnEvent(event);
}
