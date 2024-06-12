#ifndef PARALLAX_SCRIPT_H
#define PARALLAX_SCRIPT_H

#include <Engine.h>

using namespace Cober;


class Parallax : public Script
{
public:
	virtual void OnStart() override;
	virtual void OnUpdate(float dt) override;
	virtual void OnBeginContact(Entity* entityContact) override;
	virtual void OnEndContact(Entity* entityContact) override;

private:
	void GeneratePipes();
	
public:
	bool backgroundSpeed;
	bool groundSpeed;
	int movePipesTopOrDown;
	int generatePipes;
	float startYTop;
	float startYBottom;
	float startYScore;

    Entity background;
    Entity ground;
	Entity background2;
    Entity ground2;
	Entity score;
};

#endif