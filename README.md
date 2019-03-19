# Sweep & Prune Grid Hybrid 3d

Crude example of a sweep and prune algorithm in which the space is subdivided into a grid (each grid element is referred as a bin). Each AABB box is sorted into the corresponding bin and each bin is then processed via Sweep & Prune. One axis is "sweeped & pruned", the other two are checked via AABB-collision detection.

### Installing/Executing
build and run the program with the given makefile

### General remarks
* The collision response just reverses the direction of velocity
* The visualization with OpenGL is just for visual clarification (using the slow immediate mode)

### Videos
* https://www.youtube.com/watch?v=OQh0HAO6QWU
* https://www.youtube.com/watch?v=-NuhCGiRR9M
