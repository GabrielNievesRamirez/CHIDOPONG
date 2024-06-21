#ifndef CPUPADDLE_HPP
#define CPUPADDLE_HPP

#include "Paddle.hpp"

class CpuPaddle : public Paddle {
public:
    void Update(int ball_y);
};

#endif // CPUPADDLE_HPP
