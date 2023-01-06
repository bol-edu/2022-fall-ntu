
#include "delaunator.hpp"


#define max(a, b) std::max(a, b)
#define min(a, b) std::min(a, b)
#define abs(a) std::abs(a)
#define ceil(a) std::ceil(a)
#define sqrt(a) std::sqrt(a)
#define floor(a) std::floor(a)
#define round(a) ceil(a - 0.5)


namespace delaunator {
    int INVALID_INDEX = 2147483647; // std::numeric_limits<int>::max(); 
    data_type DOUBLE_MAX = 1.7976931348623158e+308; // std::numeric_limits<data_type>::max(); 
    data_type EPSILON = 2.2204460492503131e-016; // std::numeric_limits<data_type>::epsilon(); 
    data_type DOUBLE_LOWEST = -DOUBLE_MAX; // std::numeric_limits<data_type>::lowest(); 

//@see https://stackoverflow.com/questions/33333363/built-in-mod-vs-custom-mod-function-improve-the-performance-of-modulus-op/33333636#33333636
inline int fast_mod(const int i, const int c) {
    return i >= c ? i % c : i;
}

inline data_type circumradius(const Point& p1, const Point& p2, const Point& p3)
{
    Point d = Point::vector(p1, p2);
    Point e = Point::vector(p1, p3);

    const data_type bl = d.magnitude2();
    const data_type cl = e.magnitude2();
    const data_type det = Point::determinant(d, e);

    Point radius((e.y() * bl - d.y() * cl) * 0.5 / det,
                 (d.x() * cl - e.x() * bl) * 0.5 / det);

    if ((bl > 0.0 || bl < 0.0) &&
        (cl > 0.0 || cl < 0.0) &&
        (det > 0.0 || det < 0.0))
        return radius.magnitude2();
    return DOUBLE_MAX;
}

inline data_type circumradius(
    const data_type ax,
    const data_type ay,
    const data_type bx,
    const data_type by,
    const data_type cx,
    const data_type cy) {
    const data_type dx = bx - ax;
    const data_type dy = by - ay;
    const data_type ex = cx - ax;
    const data_type ey = cy - ay;

    const data_type bl = dx * dx + dy * dy;
    const data_type cl = ex * ex + ey * ey;
    const data_type d = dx * ey - dy * ex;

    const data_type x = (ey * bl - dy * cl) * 0.5 / d;
    const data_type y = (dx * cl - ex * bl) * 0.5 / d;

    if ((bl > 0.0 || bl < 0.0) && (cl > 0.0 || cl < 0.0) && (d > 0.0 || d < 0.0)) {
        return x * x + y * y;
    } else {
        return DOUBLE_MAX;
    }
}

inline bool clockwise(const Point& p0, const Point& p1, const Point& p2)
{
    Point v0 = Point::vector(p0, p1);
    Point v1 = Point::vector(p0, p2);
    data_type det = Point::determinant(v0, v1);
    data_type dist = v0.magnitude2() + v1.magnitude2();
    data_type dist2 = Point::dist2(v0, v1);
    if (det == 0)
    {
        return false;
    }

    data_type reldet = abs(dist / det);

    if (reldet > 1e14)
        return false;
    return det < 0;
}

inline bool clockwise(data_type px, data_type py, data_type qx, data_type qy,
    data_type rx, data_type ry)
{
    Point p0(px, py);
    Point p1(qx, qy);
    Point p2(rx, ry);
    return clockwise(p0, p1, p2);
}

inline bool counterclockwise(const Point& p0, const Point& p1, const Point& p2)
{
    Point v0 = Point::vector(p0, p1);
    Point v1 = Point::vector(p0, p2);
    data_type det = Point::determinant(v0, v1);
    data_type dist = v0.magnitude2() + v1.magnitude2();
    data_type dist2 = Point::dist2(v0, v1);
    if (det == 0)
        return false;
    data_type reldet = abs(dist / det);
    if (reldet > 1e14)
        return false;
    return det > 0;
}

inline bool counterclockwise(data_type px, data_type py, data_type qx, data_type qy,
    data_type rx, data_type ry)
{
    Point p0(px, py);
    Point p1(qx, qy);
    Point p2(rx, ry);
    return counterclockwise(p0, p1, p2);
}


inline Point circumcenter(
    const data_type ax,
    const data_type ay,
    const data_type bx,
    const data_type by,
    const data_type cx,
    const data_type cy) {
    const data_type dx = bx - ax;
    const data_type dy = by - ay;
    const data_type ex = cx - ax;
    const data_type ey = cy - ay;

    const data_type bl = dx * dx + dy * dy;
    const data_type cl = ex * ex + ey * ey;
    //ABELL - This is suspect for div-by-0.
    const data_type d = dx * ey - dy * ex;

    const data_type x = ax + (ey * bl - dy * cl) * 0.5 / d;
    const data_type y = ay + (dx * cl - ex * bl) * 0.5 / d;

    return Point(x, y);
}

inline bool in_circle(
    const data_type ax,
    const data_type ay,
    const data_type bx,
    const data_type by,
    const data_type cx,
    const data_type cy,
    const data_type px,
    const data_type py) {
    const data_type dx = ax - px;
    const data_type dy = ay - py;
    const data_type ex = bx - px;
    const data_type ey = by - py;
    const data_type fx = cx - px;
    const data_type fy = cy - py;

    const data_type ap = dx * dx + dy * dy;
    const data_type bp = ex * ex + ey * ey;
    const data_type cp = fx * fx + fy * fy;

    return (dx * (ey * cp - bp * fy) -
            dy * (ex * cp - bp * fx) +
            ap * (ex * fy - ey * fx)) < 0.0;
}


// monotonically increases with real angle, but doesn't need expensive trigonometry
inline data_type pseudo_angle(const data_type dx, const data_type dy) {
    const data_type p = dx / (abs(dx) + abs(dy));
    return (dy > 0.0 ? 3.0 - p : 1.0 + p) / 4.0; // [0..1)
}


void Delaunator::read_point(data_type x, data_type y)
{
    m_points[m_points_cnt++].set_point(x, y);
}

void Delaunator::delaunat()
{
    int ids[POINT_L];
// #pragma HLS DATAFLOW    
// #pragma HLS ARRAY_PARTITION variable=ids type=complete
// #pragma HLS ARRAY_PARTITION variable=dists type=complete
    // initialize a hash table for storing edges of the advancing convex hull
    m_hash_size = static_cast<int>(ceil(sqrt(m_points_cnt)));


    data_type max_x = DOUBLE_LOWEST;
    data_type max_y = DOUBLE_LOWEST;
    data_type min_x = DOUBLE_MAX;
    data_type min_y = DOUBLE_MAX;

    initialization: for (int i = 0; i < m_points_cnt; i++) {
        ids[i] = i;
        min_x = min(m_points[i].x(), min_x);
        min_y = min(m_points[i].y(), min_y);
        max_x = max(m_points[i].x(), max_x);
        max_y = max(m_points[i].y(), max_y);
        if(i < m_hash_size) m_hash[i] = INVALID_INDEX;
    }
    

    
    data_type width = max_x - min_x;
    data_type height = max_y - min_y;
    data_type span = width * width + height * height; // Everything is square dist.

    Point center((min_x + max_x) / 2, (min_y + max_y) / 2);

    int i0 = INVALID_INDEX;
    int i1 = INVALID_INDEX;
    int i2 = INVALID_INDEX;

    // pick a seed point close to the centroid
    data_type min_dist = DOUBLE_MAX;
    pick_seed: for (int i = 0; i < m_points_cnt; ++i)
    {
#pragma HLS PIPELINE II = 1
        data_type d = Point::dist2(center, m_points[i]);
        dists[i].f = d;
        if (d < min_dist) {
            i0 = i;
            min_dist = d;
        }
    }

    // sort the points by distance from the seed triangle circumcenter
    InsertionSort(ids, dists, m_points_cnt);
    // Odd_Even_Transposition_Sort(ids, dists, m_points_cnt);

    
    // find the point closest to the seed
    min_dist = DOUBLE_MAX;
    pick_seed2: for (int i = 0; i < m_points_cnt; i++) {
#pragma HLS PIPELINE II = 1
        if (i == i0) continue;
        const data_type d = Point::dist2(m_points[i0], m_points[i]);
        if (d < min_dist && d > 0.0) {
            i1 = i;
            min_dist = d;
        }
    }

    // find the third point which forms the smallest circumcircle
    // with the first two
    data_type min_radius = DOUBLE_MAX;
    pick_seed3: for (int i = 0; i < m_points_cnt; i++) {
#pragma HLS PIPELINE II = 1
        const data_type r = circumradius(m_points[i0], m_points[i1], m_points[i]);
        if (r < min_radius && !(i == i0 || i == i1)) {
            i2 = i;
            min_radius = r;
        }
    }

    if (counterclockwise(m_points[i0], m_points[i1], m_points[i2])) {
        int tmp = i1;
        i1 = i2;
        i2 = tmp;
    }

    data_type i0x = m_points[i0].x();
    data_type i0y = m_points[i0].y();
    data_type i1x = m_points[i1].x();
    data_type i1y = m_points[i1].y();
    data_type i2x = m_points[i2].x();
    data_type i2y = m_points[i2].y();

    m_center = circumcenter(i0x, i0y, i1x, i1y, i2x, i2y);

    hull_start = i0;

    dists[i0].hull.next = dists[i2].hull.prev = i1;
    dists[i1].hull.next = dists[i0].hull.prev = i2;
    dists[i2].hull.next = dists[i1].hull.prev = i0;

    hull_tri[i0] = 0;
    hull_tri[i1] = 1;
    hull_tri[i2] = 2;

    m_hash[hash_key(i0x, i0y)] = i0;
    m_hash[hash_key(i1x, i1y)] = i1;
    m_hash[hash_key(i2x, i2y)] = i2;

    // ABELL - Why are we doing this is m_points_cnt < 3?  There is no triangulation if
    //  there is no triangle.

    int max_triangles = m_points_cnt < 3 ? 1 : 2 * m_points_cnt - 5;
    
    add_triangle(i0, i1, i2, INVALID_INDEX, INVALID_INDEX, INVALID_INDEX);

    // Go through points based on distance from the center.
    triangulate: for (int k = 0; k < m_points_cnt; k++) {
        const int i = ids[k];
        const data_type x = m_points[i].x();
        const data_type y = m_points[i].y();

        // find a visible edge on the convex hull using edge hash
        int start = 0;

        int key = hash_key(x, y);
        for (int j = 0; j < m_hash_size; j++) {
#pragma HLS PIPELINE
            start = m_hash[fast_mod(key + j, m_hash_size)];

            // ABELL - Not sure how hull_next[start] could ever equal start
            // I *think* hull_next is just a representation of the hull in one
            // direction.
            if (start != INVALID_INDEX && start != dists[start].hull.next)
                break;
        }

        start = dists[start].hull.prev;
        int e = start;
        int q;

        // Advance until we find a place in the hull where our current point
        // can be added.
        while (true)
        {
#pragma HLS PIPELINE
            q = dists[e].hull.next;
            if (Point::equal(m_points[i], m_points[e], span) ||
                Point::equal(m_points[i], m_points[q], span))
            {
                e = INVALID_INDEX;
                break;
            }
            if (counterclockwise(x, y, m_points[e].x(), m_points[e].y(),
                m_points[q].x(), m_points[q].y()))
                break;
            e = q;
            if (e == start) {
                e = INVALID_INDEX;
                break;
            }
        }

        // ABELL
        // This seems wrong.  Perhaps we should check what's going on?
        if (e == INVALID_INDEX)     // likely a near-duplicate point; skip it
            continue;

        // add the first triangle from the point
        int t = add_triangle(
            e,
            i,
            dists[e].hull.next,
            INVALID_INDEX,
            INVALID_INDEX,
            hull_tri[e]);

        hull_tri[i] = legalize(t + 2); // Legalize the triangle we just added.
        hull_tri[e] = t;

        // walk forward through the hull, adding more triangles and
        // flipping recursively
        int next = dists[e].hull.next;
        while (true)
        {
#pragma HLS PIPELINE
            q = dists[next].hull.next;
            if (!counterclockwise(x, y, m_points[next].x(), m_points[next].y(),
                m_points[q].x(), m_points[q].y()))
                break;
            t = add_triangle(next, i, q,
                hull_tri[i], INVALID_INDEX, hull_tri[next]);
            hull_tri[i] = legalize(t + 2);
            dists[next].hull.next = next; // mark as removed
            next = q;
        }

        // walk backward from the other side, adding more triangles and flipping
        if (e == start) {
            while (true)
            {
#pragma HLS PIPELINE
                q = dists[e].hull.prev;
                if (!counterclockwise(x, y, m_points[q].x(), m_points[q].y(),
                    m_points[e].x(), m_points[e].y()))
                    break;
                t = add_triangle(q, i, e,
                    INVALID_INDEX, hull_tri[e], hull_tri[q]);
                legalize(t + 2);
                hull_tri[q] = t;
                dists[e].hull.next = e; // mark as removed
                e = q;
            }
        }

        // update the hull indices
        dists[i].hull.prev = e;
        hull_start = e;
        dists[next].hull.prev = i;
        dists[e].hull.next = i;
        dists[i].hull.next = next;

        m_hash[hash_key(x, y)] = i;
        m_hash[hash_key(m_points[e].x(), m_points[e].y())] = e;
    }
    return; 
}

void Delaunator::InsertionSort(int ids[POINT_L], data dist[POINT_L], int size) {

    Sorting: for (int i = 1; i < size; i++) {
        data_type key = dist[i].f;
        int key2 = ids[i];
        int j = i - 1;
        while (j >= 0 && key < dist[j].f) {
#pragma HLS PIPELINE
            ids[j + 1] = ids[j];
            dist[j + 1].f = dist[j].f;
            j--;
        }
        dist[j + 1].f = key;
        ids[j + 1] = key2;
    }
}

//template<int ID>
void Delaunator::Compare_and_Swap(int ids[POINT_L], data_type dist[POINT_L], int size, int index)
{
    if(dist[index+1] < dist[index] && index + 1 < size)
    {
        data_type tmp = dist[index];
        dist[index] = dist[index + 1];
        dist[index + 1] = tmp;

        int tmp2 = ids[index];
        ids[index] = ids[index + 1];
        ids[index + 1] = tmp2;
    }
}

void Delaunator::Odd_Even_Transposition_Sort(int ids[POINT_L], data_type dist[POINT_L], int size)
{
    for (int i = 0; i < size; i++) 
    {

        if(i%2 == 0)
        {
            for(int j = 0; j < POINT_L / 2; j ++)
            {
#pragma HLS LOOP_FLATTEN
                Compare_and_Swap(ids, dist, size, 2 * j);
            }
        }else
        {
            for(int j = 0; j < POINT_L / 2; j ++)
            {
#pragma HLS LOOP_FLATTEN
                Compare_and_Swap(ids, dist, size, 2 * j + 1);
            }
        }
    }

}

int Delaunator::legalize(int a) {
    int i = 0;
    int ar = 0;
    m_edge_stack_size = 0;

    // recursion eliminated with a fixed-size stack
    while (true) {
#pragma HLS PIPELINE
        const int b = halfedges[a];

        /* if the pair of triangles doesn't satisfy the Delaunay condition
        * (p1 is inside the circumcircle of [p0, pl, pr]), flip them,
        * then do the same check/flip recursively for the new pair of triangles
        *
        *           pl                    pl
        *          /||\                  /  \
        *       al/ || \bl            al/    \a
        *        /  ||  \              /      \
        *       /  a||b  \    flip    /___ar___\
        *     p0\   ||   /p1   =>   p0\---bl---/p1
        *        \  ||  /              \      /
        *       ar\ || /br             b\    /br
        *          \||/                  \  /
        *           pr                    pr
        */
        const int a0 = 3 * (a / 3);
        const int remainder = a - a0;
        if(remainder == 0)
            ar = a0 + 2;
        else if(remainder == 1)
            ar = a0;
        else
            ar = a0 + 1;

        if (b == INVALID_INDEX) {
            if (i > 0) {
                i--;
                a = m_edge_stack[i];
                continue;
            } else {
                //i = INVALID_INDEX;
                break;
            }
        }

        const int b0 = 3 * (b / 3);
        const int al = a0 + (a + 1) % 3;
        const int bl = b0 + (b + 2) % 3;

        const int p0 = triangles[ar];
        const int pr = triangles[a];
        const int pl = triangles[al];
        const int p1 = triangles[bl];

        const bool illegal = in_circle(
            m_points[p0].x(), m_points[p0].y(),
            m_points[pr].x(), m_points[pr].y(),
            m_points[pl].x(), m_points[pl].y(),
            m_points[p1].x(), m_points[p1].y());

        if (illegal) {
            triangles[a] = p1;
            triangles[b] = p0;

            int hbl = halfedges[bl];

            // Edge swapped on the other side of the hull (rare).
            // Fix the halfedge reference
            if (hbl == INVALID_INDEX) {
                int e = hull_start;
                do {
                    if (hull_tri[e] == bl) {
                        hull_tri[e] = a;
                        break;
                    }
                    e = dists[e].hull.prev;
                } while (e != hull_start);
            }
            link(a, hbl);
            link(b, halfedges[ar]);
            link(ar, bl);
            int br = b0 + (b + 1) % 3;

            if (i < m_edge_stack_size) {
                m_edge_stack[i] = br;
            } else {
                m_edge_stack[m_edge_stack_size++] = br;
            }
            i++;

        } else {
            if (i > 0) {
                i--;
                a = m_edge_stack[i];
                continue;
            } else {
                break;
            }
        }
    }
    return ar;
}

int Delaunator::hash_key(const data_type x, const data_type y) const {
#pragma HLS PIPELINE
    const data_type dx = x - m_center.x();
    const data_type dy = y - m_center.y();
    return fast_mod(
        floor(pseudo_angle(dx, dy) * m_hash_size), m_hash_size);
}

int Delaunator::add_triangle(
    int i0,
    int i1,
    int i2,
    int a,
    int b,
    int c) {
    int t = triangles_cnt;
#pragma HLS ARRAY_PARTITION variable=triangles type=cyclic factor=3
    triangles[triangles_cnt++] = i0;
    triangles[triangles_cnt++] = i1;
    triangles[triangles_cnt++] = i2;

    link(t, a);
    link(t + 1, b);
    link(t + 2, c);
    return t;
}

void Delaunator::link(const int a, const int b) {
#pragma HLS PIPELINE
    int s = halfedges_cnt;
    if (a == s) {
        halfedges[halfedges_cnt++] = b;
    } else if (a < s) {
        halfedges[a] = b;
    } 

    if (b != INVALID_INDEX) {
        int s2 = halfedges_cnt;
        if (b == s2) {
            halfedges[halfedges_cnt++] = a;
        } else if (b < s2) {
            halfedges[b] = a;
        } 
    } 
}

} //namespace delaunator
