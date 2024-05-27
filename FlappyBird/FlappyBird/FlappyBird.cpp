#include "FlappyBird.h"


FlappyBird::FlappyBird() : Layer("FlappyBird application") 
{
	m_Camera = CreateRef<GameCamera>(45.0f, EngineApp::Get().GetWindow().GetWidth(), EngineApp::Get().GetWindow().GetHeight(), 0.01f, 1000.0f);
}


void FlappyBird::OnAttach() 
{
	m_ActiveScene = Scene::Load("FlappyBird.lua");
	m_ActiveScene->OnSimulationStart();
}


void FlappyBird::OnDetach() 
{
	m_ActiveScene->OnSimulationStop();
	m_ActiveScene = nullptr;
	m_Camera = nullptr;
	LOG_INFO("Detached FlappyBird application Layer!");
}


void FlappyBird::OnUpdate(Unique<Timestep>& ts) 
{
	RenderGlobals::SetClearColor(46, 47, 52);
	RenderGlobals::Clear();
	m_Camera->OnUpdate(ts);
	m_ActiveScene->OnUpdateSimulation(ts, m_Camera);
}


void FlappyBird::OnEvent(Event& event) 
{
	m_Camera->OnEvent(event);
}
