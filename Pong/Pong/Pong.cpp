#include "Pong.h"


Pong::Pong() : Layer("Pong videogame") 
{
	m_Camera = CreateRef<GameCamera>(45.0f, EngineApp::Get().GetWindow().GetWidth(), EngineApp::Get().GetWindow().GetHeight(), 0.01f, 1000.0f);
}


void Pong::OnAttach() 
{
	m_ActiveScene = Scene::Load("Pong.lua");
	m_ActiveScene->OnSimulationStart();
}


void Pong::OnDetach() 
{
	m_ActiveScene->OnSimulationStop();
	m_ActiveScene = nullptr;
	m_Camera = nullptr;
	LOG_INFO("Detached Game application Layer!");
}


void Pong::OnUpdate(Unique<Timestep>& ts) 
{
	RenderGlobals::SetClearColor(0, 0, 0);
	RenderGlobals::Clear();
	m_Camera->OnUpdate(ts);
	m_ActiveScene->OnUpdateSimulation(ts, m_Camera);
}


void Pong::OnEvent(Event& event) 
{
	m_Camera->OnEvent(event);
}
