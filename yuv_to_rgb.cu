#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <iostream>
#include <ctime>

using namespace std;

__global__ void RGBToYCbCr(int* r, int* g, int* b) {
    int r1 = float(r);
    int g1 = float(g);
    int b1 = float(b);

    y  = (unsigned char)( 0.299*r1 + 0.587*g1 +  0.114*b1);
    cb = (unsigned char)(-0.169*r1 - 0.331*g1 +  0.499*b1 + 128);
    cr = (unsigned char)( 0.499*r1 - 0.418*g1 - 0.0813*b1 + 128);

    return;
}

__global__ void YCbCrToRGB(int* y, int* cb, int* cr) {
    int r1 = float(y);
    int g1 = float(cb);
    int b1 = float(cr);

    r = y1 + 1.402 * (cr1-128)
    g = y1 - 0.344414*(cb1-128) - 0.71414*(cr1-128)
    b = y1 + 1. 77200*(cb1-128)

    return;
}


int main(int argc, char** argv) {



    return 0;
}

