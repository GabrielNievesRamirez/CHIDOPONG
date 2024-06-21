#ifndef BALL_HPP
#define BALL_HPP

#include <raylib.h>

class Ball {
public:
    float x, y;
    int speed_x, speed_y;
    int radius;

    void Draw();
    void Update();
    void ResetBall();
};

#endif // BALL_HPP
