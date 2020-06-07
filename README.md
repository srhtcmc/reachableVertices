# reachableVertices
* In graph theory, adjacency matrix is a square matrix which represents the connections of
the vertices in the graph. If there is direct information flow from vertex j to vertex i, then
(i, j)-th component of the adjacency matrix is equal to 1, and 0 otherwise.
![Graph](https://github.com/srhtcmc/reachableVertices/blob/master/graph1.png?raw=true)

For instance, the adjacency matrix for the graph given in the above figure can be calculated as
![Matrix](https://github.com/srhtcmc/reachableVertices/blob/master/matrix1.png?raw=true)

In MATLAB, write the function reachableVertices which has a single input argument
(the n × n adjacency matrix of a graph) and returns a cell array with n components. i-th
component of this cell array must be the set of vertices reachable by the i-th vertex (possibly
in more than one hop). As an example, for the adjacency matrix given above, the output
of your function should be
reachableSet{1} = [2
4
6]
reachableSet{2} = [2
6]
reachableSet{3} = [2
6]
reachableSet{4} = [2
6]
reachableSet{5} = [1
2
3
4
6]
reachableSet{6} = [2
6]
