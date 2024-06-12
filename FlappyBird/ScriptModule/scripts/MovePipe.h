#ifndef GAME_MANAGER_SCRIPT_H
#define GAME_MANAGER_SCRIPT_H

#include <Engine.h>

using namespace Cober;


class MovePipe : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;
	
public:
	bool groundSpeed = 0.08;
};

#endif