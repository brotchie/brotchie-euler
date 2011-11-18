#include <iostream>
#include <iterator>
#include <algorithm>
#include <vector>

using namespace std;

template <typename T>
class fibonacci_iterator : public iterator<input_iterator_tag, T> {
public:
    fibonacci_iterator() : _current(1), _previous(0) {};

    T operator*() const { return _current; };
    bool operator==(fibonacci_iterator<T>& other) const {
        return (_current == other.curent);
    }
    bool operator!=(fibonacci_iterator<T>& other) const {
        return !(*this == other);
    }
    fibonacci_iterator<T>& operator++() { 
        T tmp;
        if (_previous == 0) {
            _current = 2;
            _previous = 1;
        } else {
            tmp = _current + _previous;
            _previous = _current;
            _current = tmp;
        }
        return *this;
    }

    fibonacci_iterator<T> operator++(int) {
        auto pre = *this;
        ++(*this);
        return pre;
    }

private:
    T _current;
    T _previous;
};

int main() {
    long count;
    for (fibonacci_iterator<long> i;*i < 4000000; ++i) {
        if(*i % 2 == 0) {
            count += *i;
        }
    }
    cout << count << endl;
    return 0;
}
