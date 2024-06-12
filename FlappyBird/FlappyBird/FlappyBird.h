#ifndef FlappyBird_H
#define FlappyBird_H

#include <Engine.h>

using namespace Cober;


class FlappyBird : public Layer 
{
public:
	FlappyBird();
	virtual ~FlappyBird() = default;

	virtual void OnAttach() override;
	virtual void OnDetach() override;

	void OnUpdate(Unique<Timestep>& ts) override;
	void OnEvent(Event& event) override;
private:
	Ref<Scene> m_ActiveScene;
	Ref<Camera> m_Camera;
};

#endif
