#ifndef GAME_MANAGER_MENU_H
#define GAME_MANAGER_MENU_H

#include <Engine.h>

using namespace Cober;

class GameManager : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;
	virtual void OnEvent(Event& event) override;

	void GenerateLevel();
	
public:
	Entity background;
	Entity camera;
	Entity player;

    bool gameStarted;

	int tiers;
	bool emptySpace;

	std::vector<std::string> prefabs
	{
		"BaseBlueBrick.lua", "BaseRedBrick.lua",
		"BaseGreenBrick.lua", "BaseYellowBrick.lua",
		"BaseVioletBrick.lua"
	};
};

#endif