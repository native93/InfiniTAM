
#include "CImg.h"
#include <iostream>
using namespace cimg_library;

int main()
{
  CImg<float> image("hills.png");
  CImgDisplay main_disp(image);
  float pixvalR = image(10,10,0,0); // read red val at coord 10,10
  float pixvalG = image(10,10,0,1); // read green val at coord 10,10
  float pixvalB = image(10,10,0,2); // read blue val at coord 10,10
  std::cout << "R = " << pixvalR << ", G = " << pixvalG << ", B = " << pixvalB;
  
  std::cin.ignore();
}
