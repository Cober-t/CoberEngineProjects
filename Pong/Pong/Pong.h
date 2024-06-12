#ifndef PONG_H
#define PONG_H

#include <Engine.h>

using namespace Cober;


class Pong : public Layer 
{
public:
	Pong();
	virtual ~Pong() = default;

	virtual void OnAttach() override;
	virtual void OnDetach() override;

	void OnUpdate(Unique<Timestep>& ts) override;
	void OnEvent(Event& event) override;
private:
	Ref<Scene> m_ActiveScene;
	Ref<Camera> m_Camera;
};

#endif
