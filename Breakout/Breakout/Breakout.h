#ifndef Breakout_H
#define Breakout_H

#include <Engine.h>

using namespace Cober;


class Breakout : public Layer 
{
public:
	Breakout();
	virtual ~Breakout() = default;

	virtual void OnAttach() override;
	virtual void OnDetach() override;

	void OnUpdate(Unique<Timestep>& ts) override;
	void OnEvent(Event& event) override;
private:
	Ref<Scene> m_ActiveScene;
	Ref<Camera> m_Camera;
};

#endif
