#ifndef INIT_SCRIPTS_H
#define INIT_SCRIPTS_H

#include <Engine.h>
#include <iostream>
#include <cstdlib>

#include "Core/Core.h"
#include "Scene/ECS.h"

#include "../BirdController.h"
#include "../MovePipe.h"
#include "../Parallax.h"

#define ENTT_STANDARD_CPP
#include <entt/entt.hpp>


namespace Cober {

	extern "C" CB_SCRIPT void InitScripts(Scene* scene, Entity entity)
	{
		if (entity.GetComponent<NativeScriptComponent>().className == "BirdController")
		{
			entity.AddComponent<BirdController>();
			entity.GetComponent<BirdController>().entity = entity;
			entity.GetComponent<BirdController>().scene = scene;
			entity.GetComponent<BirdController>().OnStart();
		}

		if (entity.GetComponent<NativeScriptComponent>().className == "MovePipe")
		{
			entity.AddComponent<MovePipe>();
			entity.GetComponent<MovePipe>().entity = entity;
			entity.GetComponent<MovePipe>().scene = scene;
			entity.GetComponent<MovePipe>().OnStart();
		}

		if (entity.GetComponent<NativeScriptComponent>().className == "Parallax")
		{
			entity.AddComponent<Parallax>();
			entity.GetComponent<Parallax>().entity = entity;
			entity.GetComponent<Parallax>().scene = scene;
			entity.GetComponent<Parallax>().OnStart();
		}
	}

	extern "C" CB_SCRIPT void UpdateScripts(Scene* scene, float dt)
	{
		auto birdControllerView = scene->GetAllEntitiesWith<BirdController>();

		for (auto entt : birdControllerView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<BirdController>().OnUpdate(dt);
		}

		auto movePipeView = scene->GetAllEntitiesWith<MovePipe>();

		for (auto entt : movePipeView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<MovePipe>().OnUpdate(dt);
		}

		auto parallaxView = scene->GetAllEntitiesWith<Parallax>();

		for (auto entt : parallaxView)
		{
			Entity entity = Entity(entt, scene);
			entity.GetComponent<Parallax>().OnUpdate(dt);
		}
	}

	extern "C" CB_SCRIPT void NotifyBeginContact(Entity* entityA, Entity* entityB)
	{
		if (entityA->HasComponent<BirdController>())
			entityA->GetComponent<BirdController>().OnBeginContact(entityB);
		else if (entityB->HasComponent<BirdController>())
			entityB->GetComponent<BirdController>().OnBeginContact(entityA);
		
		if (entityA->HasComponent<Parallax>())
			entityA->GetComponent<Parallax>().OnBeginContact(entityB);
		else if (entityB->HasComponent<Parallax>())
			entityB->GetComponent<Parallax>().OnBeginContact(entityA);
	}

	extern "C" CB_SCRIPT void NotifyEndContact(Entity* entityA, Entity* entityB)
	{
		if (entityA->HasComponent<BirdController>())
			entityA->GetComponent<BirdController>().OnEndContact(entityB);
		else if (entityB->HasComponent<BirdController>())
			entityB->GetComponent<BirdController>().OnEndContact(entityA);
		
		if (entityA->HasComponent<Parallax>())
			entityA->GetComponent<Parallax>().OnEndContact(entityB);
		else if (entityB->HasComponent<Parallax>())
			entityB->GetComponent<Parallax>().OnEndContact(entityA);
	}


	extern "C" CB_SCRIPT void DeleteScripts(Scene* scene)
	{
		scene->GetRegistry()->clear<BirdController>();
		scene->GetRegistry()->clear<MovePipe>();
		scene->GetRegistry()->clear<Parallax>();
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

	// extern "C" CB_SCRIPT void DeleteScripts()
	// {
	// 	// Log::Info("Deletink Scripts");
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
