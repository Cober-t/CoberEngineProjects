#include "Parallax.h"


void Parallax::OnStart()
{
    backgroundSpeed = 0.03;
    groundSpeed = 0.5;
	movePipesTopOrDown = 0;
    generatePipes = 8;
    startYTop = 0;
    startYBottom = 0;

    GeneratePipes();

    background = scene->FindEntityByName("Background");
    ground = scene->FindEntityByName("Ground");
    background2 = scene->FindEntityByName("Background2");
    ground2 = scene->FindEntityByName("Ground2");

    Audio::Play(entity.GetComponent<AudioComponent>().audioName, entity.GetComponent<AudioComponent>().loop);
}

void Parallax::OnUpdate(float dt)
{
    background.GetComponent<TransformComponent>().position.x -= backgroundSpeed * dt * 0.01;
    background2.GetComponent<TransformComponent>().position.x -= backgroundSpeed * dt * 0.01;

    auto groundBody = (b2Body*)ground.GetComponent<Rigidbody2D>().runtimeBody;
    Physics2D::Move(groundBody, -groundSpeed * dt, 0.0f);
    auto ground2Body = (b2Body*)ground2.GetComponent<Rigidbody2D>().runtimeBody;
    Physics2D::Move(ground2Body, -groundSpeed * dt, 0.0f);

    if (background.GetComponent<TransformComponent>().position.x <= -24)
        Physics2D::MoveTo(background, 17.2, 0);
    if (background2.GetComponent<TransformComponent>().position.x <= -24)
        Physics2D::MoveTo(background2, 17.2, 0);
}

void Parallax::OnBeginContact(Entity* entityContact) 
{
    if (entityContact->GetName() == "Score")
    {
        movePipesTopOrDown = Random::Value(0, 1);
        movePipesTopOrDown *= Random::Value(-1, 1);

        if (generatePipes > 0)
            GeneratePipes();
    }
}

void Parallax::OnEndContact(Entity* entityContact) 
{
    if (entityContact->GetName() == "Ground" || entityContact->GetName() == "Ground2")
        Physics2D::MoveTo(*entityContact, 20, entityContact->GetComponent<TransformComponent>().position.y);

    if (entityContact->GetName() == "PipeTop")
        Physics2D::MoveTo(*entityContact, 11, startYTop + movePipesTopOrDown);

    if (entityContact->GetName() == "PipeBottom")
    {
        Physics2D::MoveTo(*entityContact, 11, startYBottom + movePipesTopOrDown);
    }

    if (entityContact->GetName() == "Score")
    {
        Physics2D::MoveTo(*entityContact, 11, startYScore + movePipesTopOrDown);
    }
}

void Parallax::GeneratePipes()
{
    startYTop = Scene::LoadPrefab(scene, "PipeTop.lua").GetComponent<TransformComponent>().position.y;
    startYScore = Scene::LoadPrefab(scene, "Score.lua").GetComponent<TransformComponent>().position.y;
    startYBottom = Scene::LoadPrefab(scene, "PipeBottom.lua").GetComponent<TransformComponent>().position.y;

    generatePipes--;
}