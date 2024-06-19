#ifndef PLAYER_CONTROLLER_SCRIPT_H
#define PLAYER_CONTROLLER_SCRIPT_H

#include <Engine.h>
#include <glm/glm.hpp>

using namespace Cober;


class PlayerController : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;
	virtual void OnEvent(Event& event) override;

public:
	float leftLimit = -3.3;
	float rightLimit = 3.3;
	bool gameStarted = false;
};

#endif