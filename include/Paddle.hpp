#ifndef PADDLE_HPP
#define PADDLE_HPP

#include <raylib.h>

class Paddle {
protected:
    void LimitMovement();

public:
    float x, y;
    float width, height;
    int speed;

    void Draw();
    void Update();
};

#endif // PADDLE_HPP
