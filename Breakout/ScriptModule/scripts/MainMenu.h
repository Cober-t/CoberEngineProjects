#ifndef MAIN_MENU_H
#define MAIN_MENU_H

#include <Engine.h>

using namespace Cober;


class MainMenu : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;
	virtual void OnEvent(Event& event) override;
	
public:
	Entity background;
	Entity camera;
	Entity startButton;
	Entity exitButton;
	bool highlighted;
};

#endif