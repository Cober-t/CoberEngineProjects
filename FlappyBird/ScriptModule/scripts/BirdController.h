#ifndef BIRD_CONTROLLER_SCRIPT_H
#define BIRD_CONTROLLER_SCRIPT_H

#include <Engine.h>

using namespace Cober;


class BirdController : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;
	
public:
	float impulse = 20.0f;
	bool addImpulse = true;
	bool gameStarted = false;
	int score = 0;
	Entity scoreEntityHandler;
};

#endif