#ifndef INIT_SCRIPTS_H
#define INIT_SCRIPTS_H

#include <Engine.h>
#include <iostream>
#include <cstdlib>

#include "Core/Core.h"
#include "Scene/ECS.h"

#include "../MainMenu.h"
#include "../BrickScript.h"
#include "../GameManager.h"
#include "../PlayerController.h"
#include "../Ball.h"

#define ENTT_STANDARD_CPP
#include <entt/entt.hpp>


namespace Cober {

	extern "C" CB_SCRIPT void InitScripts(Scene* scene, Entity entity)
	{
		if (entity.GetComponent<NativeScriptComponent>().className == "MainMenu")
		{
			entity.AddComponent<MainMenu>();
			entity.GetComponent<MainMenu>().entity = entity;
			entity.GetComponent<MainMenu>().scene = scene;
			entity.GetComponent<MainMenu>().OnStart();
		}

		if (entity.GetComponent<NativeScriptComponent>().className == "GameManager")
		{
			entity.AddComponent<GameManager>();
			entity.GetComponent<GameManager>().entity = entity;
			entity.GetComponent<GameManager>().scene = scene;
			entity.GetComponent<GameManager>().OnStart();
		}

		if (entity.GetComponent<NativeScriptComponent>().className == "Ball")
		{
			entity.AddComponent<Ball>();
			entity.GetComponent<Ball>().entity = entity;
			entity.GetComponent<Ball>().scene = scene;
			entity.GetComponent<Ball>().OnStart();
		}

		if (entity.GetComponent<NativeScriptComponent>().className == "PlayerController")
		{
			entity.AddComponent<PlayerController>();
			entity.GetComponent<PlayerController>().entity = entity;
			entity.GetComponent<PlayerController>().scene = scene;
			entity.GetComponent<PlayerController>().OnStart();
		}

		if (entity.GetComponent<NativeScriptComponent>().className == "BrickScript")
		{
			entity.AddComponent<BrickScript>();
			entity.GetComponent<BrickScript>().entity = entity;
			entity.GetComponent<BrickScript>().scene = scene;
			entity.GetComponent<BrickScript>().OnStart();
		}
	}

	extern "C" CB_SCRIPT void UpdateScripts(Scene* scene, float dt)
	{
		auto mainMenuView = scene->GetAllEntitiesWith<MainMenu>();

		for (auto entt : mainMenuView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<MainMenu>().OnUpdate(dt);
		}

		auto gameManagerView = scene->GetAllEntitiesWith<GameManager>();

		for (auto entt : gameManagerView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<GameManager>().OnUpdate(dt);
		}

		auto ballView = scene->GetAllEntitiesWith<Ball>();

		for (auto entt : ballView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<Ball>().OnUpdate(dt);
		}

		auto playerControllerView = scene->GetAllEntitiesWith<PlayerController>();

		for (auto entt : playerControllerView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<PlayerController>().OnUpdate(dt);
		}

		auto brickScriptView = scene->GetAllEntitiesWith<BrickScript>();

		for (auto entt : brickScriptView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<BrickScript>().OnUpdate(dt);
		}
	}

	extern "C" CB_SCRIPT void NotifyBeginContact(Entity* entityA, Entity* entityB)
	{
		if (entityA->HasComponent<MainMenu>())
			entityA->GetComponent<MainMenu>().OnBeginContact(entityB);
		else if (entityB->HasComponent<MainMenu>())
			entityB->GetComponent<MainMenu>().OnBeginContact(entityA);
		
		if (entityA->HasComponent<GameManager>())
			entityA->GetComponent<GameManager>().OnBeginContact(entityB);
		else if (entityB->HasComponent<GameManager>())
			entityB->GetComponent<GameManager>().OnBeginContact(entityA);

		if (entityA->HasComponent<Ball>())
			entityA->GetComponent<Ball>().OnBeginContact(entityB);
		else if (entityB->HasComponent<Ball>())
			entityB->GetComponent<Ball>().OnBeginContact(entityA);
		
		if (entityA->HasComponent<PlayerController>())
			entityA->GetComponent<PlayerController>().OnBeginContact(entityB);
		else if (entityB->HasComponent<PlayerController>())
			entityB->GetComponent<PlayerController>().OnBeginContact(entityA);
		
		if (entityA->HasComponent<BrickScript>())
			entityA->GetComponent<BrickScript>().OnBeginContact(entityB);
		else if (entityB->HasComponent<BrickScript>())
			entityB->GetComponent<BrickScript>().OnBeginContact(entityA);
	}

	extern "C" CB_SCRIPT void NotifyEndContact(Entity* entityA, Entity* entityB)
	{
		if (entityA->HasComponent<MainMenu>())
			entityA->GetComponent<MainMenu>().OnEndContact(entityB);
		else if (entityB->HasComponent<MainMenu>())
			entityB->GetComponent<MainMenu>().OnEndContact(entityA);
		
		if (entityA->HasComponent<GameManager>())
			entityA->GetComponent<GameManager>().OnEndContact(entityB);
		else if (entityB->HasComponent<GameManager>())
			entityB->GetComponent<GameManager>().OnEndContact(entityA);
		
		if (entityA->HasComponent<Ball>())
			entityA->GetComponent<Ball>().OnEndContact(entityB);
		else if (entityB->HasComponent<Ball>())
			entityB->GetComponent<Ball>().OnEndContact(entityA);
		
		if (entityA->HasComponent<PlayerController>())
			entityA->GetComponent<PlayerController>().OnEndContact(entityB);
		else if (entityB->HasComponent<PlayerController>())
			entityB->GetComponent<PlayerController>().OnEndContact(entityA);
		
		if (entityA->HasComponent<BrickScript>())
			entityA->GetComponent<BrickScript>().OnEndContact(entityB);
		else if (entityB->HasComponent<BrickScript>())
			entityB->GetComponent<BrickScript>().OnEndContact(entityA);
	}


	extern "C" CB_SCRIPT void EventScripts(Scene* scene, Event& event)
	{
		auto playerControllerView = scene->GetAllEntitiesWith<PlayerController>();
		for (auto entt : playerControllerView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<PlayerController>().OnEvent(event);
		}

		auto ballView = scene->GetAllEntitiesWith<Ball>();
		for (auto entt : ballView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<Ball>().OnEvent(event);
		}
	}


	extern "C" CB_SCRIPT void DeleteScripts(Scene* scene)
	{
		scene->GetRegistry()->clear<MainMenu>();
		scene->GetRegistry()->clear<GameManager>();
		scene->GetRegistry()->clear<Ball>();
		scene->GetRegistry()->clear<PlayerController>();
		scene->GetRegistry()->clear<BrickScript>();
	}


	// extern "C" CB_SCRIPT void EditorUpdateScripts(entt::registry& registryRef, float dt)
	// {
	// }


	// extern "C" CB_SCRIPT void SaveScripts(entt::registry& registryRef, json& j, SceneData* sceneData)
	// {
		// Log::Info("Saving scripts");
	// }

	// extern "C" CB_SCRIPT void LoadScript(entt::registry& registryRef, const json& j, Entity entity)
	// {
	// }


	// extern "C" CB_SCRIPT void InitImGui(void* ctx)
	// {
	// 	// Log::Info("Initializing ImGui");
	// 	ImGui::SetCurrentContext((ImGuiContext*)ctx);
	// }

	// extern "C" CB_SCRIPT void ImGui(entt::registry& registryRef, Entity entity)
	// {
	// }

}

BOOL WINAPI DllMain(
	HINSTANCE hinstDLL,  // handle to DLL module
	DWORD fdwReason,     // reason for calling function
	LPVOID lpvReserved )  // reserved
	{
		// Perform actions based on the reason for calling.
		switch( fdwReason ) 
		{ 
			case DLL_PROCESS_ATTACH:
			// Initialize once for each new process.
			// Return FALSE to fail DLL load.
				break;

			case DLL_THREAD_ATTACH:
			// Do thread-specific initialization.
				break;

			case DLL_THREAD_DETACH:
			// Do thread-specific cleanup.
				break;

			case DLL_PROCESS_DETACH:
			
				if (lpvReserved != nullptr)
				{
					break; // do not do cleanup if process termination scenario
				}
				
			// Perform any necessary cleanup.
				break;
	}
	return TRUE;  // Successful DLL_PROCESS_ATTACH.
}

#endif
