
#ifndef DELAUNATOR_HPP
#define DELAUNATOR_HPP

#include <limits>
#include <iostream>
#include <cmath>

#include "size.hpp"

typedef float data_type;
union data{
    struct {
        int16_t prev;
        int16_t next;
    } hull;
    data_type f;

    // data(){}
};

namespace delaunator {
    
class Point
{
public:
    Point(data_type x, data_type y) : m_x(x), m_y(y) {}
    Point() {}

    void set_point (data_type x, data_type y)
    {
        m_x = x;
        m_y = y;
    }

    data_type x() const
    { return m_x; }

    data_type y() const
    { return m_y; }

    data_type magnitude2() const
    { return m_x * m_x + m_y * m_y; }

    static data_type determinant(const Point& p1, const Point& p2)
    {
        return p1.m_x * p2.m_y - p1.m_y * p2.m_x;
    }

    static Point vector(const Point& p1, const Point& p2)
    {
        return Point(p2.m_x - p1.m_x, p2.m_y - p1.m_y);
    }

    static data_type dist2(const Point& p1, const Point& p2)
    {
        Point vec = vector(p1, p2);
        return vec.m_x * vec.m_x + vec.m_y * vec.m_y;
    }

    static bool equal(const Point& p1, const Point& p2, data_type span)
    {
        data_type dist = dist2(p1, p2) / span;

        // ABELL - This number should be examined to figure how how
        // it correlates with the breakdown of calculating determinants.
        return dist < 1e-20;
    }


private:
    data_type m_x;
    data_type m_y;
};

class Delaunator {

public:
    data dists[POINT_L]; //hull_prev + dist
    // 'triangles' stores the indices to the 'X's of the input
    // 'coords'. max: 18228

    int triangles[TRIANGLE_L];
    int triangles_cnt;

    int m_points_cnt;

    // 'halfedges' store indices into 'triangles'.  If halfedges[X] = Y,
    // It says that there's an edge from X to Y where a) X and Y are
    // both indices into triangles and b) X and Y are indices into different
    // triangles in the array.  This allows you to get from a triangle to
    // its adjacent triangle.  If the a triangle edge has no adjacent triangle,
    // its half edge will be INVALID_INDEX. 
    int halfedges[TRIANGLE_L];
    int halfedges_cnt;

    //int hull_next[POINT_L];

    // This contains indexes into the triangles array.
    int hull_tri[POINT_L];

    int hull_start;

    int m_edge_stack_size;
    int m_hash_size;

    Delaunator() 
    {
        triangles_cnt = 0;
        halfedges_cnt = 0;
        m_edge_stack_size = 0;
        m_hash_size = 0;
        m_points_cnt = 0;
        
    };
    void read_point(data_type x, data_type y);
    void delaunat();
    

private:
    Point m_points[POINT_L];
    Point m_center;

    
    int m_hash[HASH_L];

    
    int m_edge_stack[EDGE_L];

    int legalize(int a);
    int hash_key(data_type x, data_type y) const;
    int add_triangle(int i0, int i1, int i2, int a, int b, int c);
    void link(int a, int b);
    void InsertionSort(int ids[POINT_L], data dist[POINT_L], int size);
    void Odd_Even_Transposition_Sort(int ids[POINT_L], data_type dist[POINT_L], int size); 
    //template<int ID> 
    void Compare_and_Swap(int ids[POINT_L], data_type dist[POINT_L], int size, int index);
};

} //namespace delaunator

#endif
