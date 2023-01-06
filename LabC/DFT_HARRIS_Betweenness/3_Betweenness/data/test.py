adj = []
offest = []

with open("./profile-csr-offset.mtx", "r") as f:
    num_v = int(f.readline().split()[0])
    for i in range(num_v+1):
        l = f.readline()
        offest.append(int(l.strip()))

with open("./profile-csr-indicesweights.mtx", "r") as f:
    num_e = int(f.readline().strip())
    v = 0
    tmp = []
    for i in range(num_e):
        if (i >= offest[v+1]):
            adj.append(tmp)
            v = v+1
            tmp = []
        adj_v = int(f.readline().strip().split()[0])
        tmp.append(adj_v)

adj.append(tmp)
assert(len(adj) == num_v)
assert(v == num_v-1)

max_fout = 0
e = 0
for i in range(num_v):
    if (len(adj[i]) > max_fout):
        max_fout = len(adj[i]);
    for adj_v in adj[i]:
        if (i not in adj[adj_v]):
            e += 1
print(max_fout)

