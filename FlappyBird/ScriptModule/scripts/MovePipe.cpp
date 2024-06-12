#include "MovePipe.h"


void MovePipe::OnStart()
{
    
}

void MovePipe::OnUpdate(float dt)
{
    auto body = (b2Body*)entity.GetComponent<Rigidbody2D>().runtimeBody;
    Physics2D::Move(body, -groundSpeed * dt, 0.0f);
}

void MovePipe::OnBeginContact(Entity* entityContact) 
{
}

void MovePipe::OnEndContact(Entity* entityContact) 
{
}