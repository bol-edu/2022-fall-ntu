#include <iostream>
#include <iomanip>
#include <cstdlib>
#include "ap_int.h"
using namespace std;

#define N 3534
#define L 24
#define E 41594

typedef ap_uint<16> data_t;
typedef ap_int<16> DIST_TYPE;

typedef bool flag_t;
//Stack Class
template<class data_T, class flag_T>
class Stack {
protected:
	data_T storage[N];
	data_T cnt;
public:
	void 	 reset();

	flag_T   push_back(data_T element);
	data_T   pop_back();
	data_T   back();

	flag_T   empty();
	flag_T   full();
};
template<class data_T, class flag_T>
void   Stack<data_T, flag_T>::reset(){
	cnt = 0;
}
template<class data_T, class flag_T>
flag_T Stack<data_T, flag_T>::push_back(data_T element) {
    flag_T flag = !full();
    if(flag)
    {
        storage[cnt] = element;
        cnt = cnt + 1;
    }
    return flag;
}
template<class data_T, class flag_T>
data_T Stack<data_T, flag_T>:: pop_back(){
    flag_T flag = !empty();
    data_T data = -1;
    if(flag)
    {
        cnt = cnt - 1;
        data = storage[cnt];
    }
    return data;
}
template<class data_T, class flag_T>
data_T Stack<data_T, flag_T>:: back(){
    flag_T flag = !empty();
    data_T data = -1;
    if(flag)
    {
        data = storage[cnt - 1];
    }
    return data;
}
template<class data_T, class flag_T>
flag_T Stack<data_T, flag_T>:: empty(){
    return (cnt == 0);
}
template<class data_T, class flag_T>
flag_T Stack<data_T, flag_T>:: full(){
    return (cnt == N);
}
//Queue Class
template<class data_T, class flag_T>
class Queue {
 protected:
   data_T storage[N];
   data_T sp; //start pointer
   data_T ep; //end pointer
   data_T cnt;

 private:
 public:
   void 	reset();
   flag_T   push_back(data_T element);
   data_T	pop_front();
   data_T   front();

   flag_T   empty();
   flag_T   full();

};
template<class data_T, class flag_T>
void   Queue<data_T, flag_T>::reset(){
	cnt = 0;
	sp = 0;
	ep = 0;
}
template<class data_T, class flag_T>
flag_T Queue<data_T, flag_T>::push_back(data_T element) {
    flag_T flag = !full();
    if(flag)
    {
        storage[ep] = element;
        if(ep == N-1)
        	ep = 0;
        else
        	ep = ep + 1;
        cnt = cnt + 1;
    }
    return flag;
}
template<class data_T, class flag_T>
data_T Queue<data_T, flag_T>::pop_front() {
    flag_T flag = !empty();
    data_T data = -1;
    if(flag)
    {
        data = storage[sp];
        if(sp == N-1)
        	sp = 0;
        else
        	sp = sp + 1;
        cnt = cnt - 1;
    }
    return data;
}
template<class data_T, class flag_T>
data_T Queue<data_T, flag_T>::front() {
    flag_T flag = !empty();
    data_T data = -1;
    if(flag)
    {
        data = storage[sp];
    }
    return data;
}
template<class data_T, class flag_T>
flag_T Queue<data_T, flag_T>:: empty(){
    return (cnt == 0);
}
template<class data_T, class flag_T>
flag_T Queue<data_T, flag_T>:: full(){
    return (cnt == N);
}
