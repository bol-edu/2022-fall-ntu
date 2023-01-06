#ifndef CONTAINER_CPP
#define CONTAINER_CPP

#include <iostream>
#include <stdio.h>

using namespace std;

// #define MaxSize 100000

//Vector Class
template<class data_T, int length>
class Vector {
protected:
	data_T storage[length];
	bool empty();
	bool full();
	int size;

private:
public:
    Vector(){size = 0;}
	void     clear();
	void     push_back(data_T element);
	data_T   fetch(int idx);
	data_T   front();
	data_T   back();

    int     get_size();

};
template<class data_T, int length>
void   Vector<data_T, length>::clear() {
	size = 0;
}
template<class data_T, int length>
void Vector<data_T, length>::push_back(data_T element) {
	bool flag = !full();
	if (flag)
	{
		storage[size] = element;
		size = size + 1;
	}
}
template<class data_T, int length>
data_T Vector<data_T, length>::front() {
	bool flag = !empty();
	data_T data;
	if (flag)
	{
		data = storage[0];
	}
	return data;
}
template<class data_T, int length>
data_T Vector<data_T, length>::fetch(int idx) {
	bool flag = !((empty()) && (idx < size - 1));
	data_T data;
	if (flag)
	{
		data = storage[idx];
	}
	return data;
}
template<class data_T, int length>
data_T Vector<data_T, length>::back() {
	bool flag = !empty();
	data_T data;
	if (flag)
	{
		data = storage[size - 1];
	}
	return data;
}
template<class data_T, int length>
bool Vector<data_T, length>::empty() {
	return (size == 0);
}
template<class data_T, int length>
bool Vector<data_T, length>::full() {
	return (size == length);
}
template<class data_T, int length>
int Vector<data_T, length>::get_size() {
	return size;
}
#endif
