#ifndef BRICK_SCRIPT_H
#define BRICK_SCRIPT_H

#include <Engine.h>

using namespace Cober;

class BrickScript : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;
	virtual void OnEvent(Event& event) override;

	void SetTier(int i);
	
public:
	Entity score;
    int totalScore;
    int tier;
    int index;

	float brickWidth = 0.4;
	float brickHeight = 0.3;
};

#endif