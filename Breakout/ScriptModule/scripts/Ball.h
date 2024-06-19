#ifndef BALL_SCRIPT_H
#define BALL_SCRIPT_H

#include <Engine.h>
#include <glm/glm.hpp>

using namespace Cober;


class Ball : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;
	virtual void OnEvent(Event& event) override;

public:
	Entity player;
	std::vector<Entity> lifeHearts;
	std::vector<Entity> emptyHearts;

	float heartsPositionX;
	float heartsPositionY;

	float rightLimit = 3.7f;
	float leftLimit = -3.7f;
	float upperLimit = 1.95f;
	float speed = 0.75f;
	bool gameStarted = false;
	int lifes = 3;

	glm::vec2 ballStartPosition;
	glm::vec2 playerStartPosition;
};

#endif