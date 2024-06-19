#include "BrickScript.h"


void BrickScript::OnStart()
{
    score = scene->FindEntityByName("Score");

    if (entity.GetComponent<Render2DComponent>().isSubTexture)
    {
        index = entity.GetComponent<Render2DComponent>().subTextureIndex.y;
    }
}

void BrickScript::OnUpdate(float dt)
{

}

void BrickScript::OnBeginContact(Entity* entityContact) 
{
    if (entityContact->GetName() == "Ball")
    {
        auto ballBody = (b2Body*)entityContact->GetComponent<Rigidbody2D>().runtimeBody;

        auto& ballTransform = entityContact->GetComponent<TransformComponent>();
        auto& transform = entityContact->GetComponent<TransformComponent>();

        // Top Collision with the Brick
        if (ballTransform.position.y > transform.position.y || ballTransform.position.y < transform.position.y &&
            ballTransform.position.x <= transform.position.x + brickWidth/2 ||
            ballTransform.position.x >= transform.position.x - brickWidth/2)
        {
            Physics2D::Move(ballBody, ballBody->GetLinearVelocity().x, -ballBody->GetLinearVelocity().y);
        }

        // Down Collision with the Brick
        else if (ballTransform.position.y < transform.position.y &&
            ballTransform.position.x <= transform.position.x + brickWidth/2 ||
            ballTransform.position.x >= transform.position.x - brickWidth/2)
        {
            Physics2D::Move(ballBody, ballBody->GetLinearVelocity().x, -ballBody->GetLinearVelocity().y);
        }

        // Left Collision with the Brick
        else if (ballTransform.position.x < transform.position.x || ballTransform.position.x > transform.position.x &&
            ballTransform.position.y <= transform.position.y + brickHeight/2 ||
            ballTransform.position.y >= transform.position.y - brickHeight/2)
        {
            Physics2D::Move(ballBody, -ballBody->GetLinearVelocity().x, ballBody->GetLinearVelocity().y);
        }

        // Right Collision with the Brick
        else if (ballTransform.position.x > transform.position.x &&
            ballTransform.position.y <= transform.position.y + brickHeight/2 ||
            ballTransform.position.y >= transform.position.y - brickHeight/2)
        {
            Physics2D::Move(ballBody, -ballBody->GetLinearVelocity().x, ballBody->GetLinearVelocity().y);
        }
    }
	
}


void BrickScript::OnEndContact(Entity* entityContact) 
{
    if (entityContact->GetName() == "Ball")
    {
        totalScore += tier * 200 + index * 50;
        score.GetComponent<TextComponent>().Text = std::to_string(totalScore);
        auto& renderComponent = entity.GetComponent<Render2DComponent>();

        renderComponent.subTextureIndex.x = 0;
        renderComponent.subTextureIndex.y -= 2;
        if (entity.GetComponent<Render2DComponent>().subTextureIndex.y < 0)
        {
            Audio::Play("brick-hit-2.wav");
            scene->DestroyEntity(entity);
            return;
        }
        ParticleEmitter::Emit(entity.GetComponent<ParticleEmitterComponent>());
        Audio::Play("brick-hit-1.wav");
        
        // Embed in a Script Fn in the future
        renderComponent.subTexture = SubTexture::UpdateCoords(renderComponent.texture, renderComponent.vertices,
                                                        renderComponent.subTextureIndex, 
                                                        renderComponent.subTextureCellSize,
                                                        renderComponent.subTextureSpriteSize);
    }
}

void BrickScript::OnEvent(Event& event) 
{
}

void BrickScript::SetTier(int i)
{
    tier = i;
}