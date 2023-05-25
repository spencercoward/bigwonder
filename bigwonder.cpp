// written by scoward
#include <iostream>
#include <Poco/Stopwatch.h>

int main()
{
   Poco::Stopwatch sw;
   sw.start();
   std::cout << "big wonder linux" << std::endl;
   sw.stop();
   std::cout << "time to print: " << sw.elapsed() << std::endl;
   return 0;
}
// written by scoward