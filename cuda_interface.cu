#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <iostream>
#include <ctime>

using namespace std;

__global__ void RGBToYCbCr(unsigned char r, unsigned char g, unsigned char b) {
    float r1 = (float)(r);
    float g1 = (float)(g);
    float b1 = (float)(b);

    float y  = (float)( 0.299*r1 + 0.587*g1 +  0.114*b1);
    float cb = (float)(-0.169*r1 - 0.331*g1 +  0.499*b1 + 128);
    float cr = (float)( 0.499*r1 - 0.418*g1 - 0.0813*b1 + 128);

    return RGBToYCbCr();
}

__global__ void YCbCrToRGB(float y, float cb, float cr) {
    float r1 = float(y);
    float g1 = float(cb);
    float b1 = float(cr);

    float r = y1 + 1.402 * (b1-128)
    float g = y1 - 0.344414*(g1-128) - 0.71414*(b1-128)
    float b = y1 + 1. 77200*(g1-128)

    return YCbCrToRGB();
}


int main(int argc, char** argv) {



    return 0;
}

