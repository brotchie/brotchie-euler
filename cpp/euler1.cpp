#include <iostream>
#include <algorithm>
#include <boost/lambda/lambda.hpp>
#include <boost/iterator/counting_iterator.hpp>

using namespace boost::lambda;
using namespace boost;
using namespace std;

int main() {
    auto c = counting_iterator<int>(1);
    cout << accumulate(c, c + 999, 0, _1 + ((_2 % 3 == 0) || (_2 % 5 == 0)) * _2) << endl;
    return 0;
}
