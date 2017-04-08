# end2end-spynet
It is a 5-level end-to-end spynet. The EPE on Flying Chairs is 2.77 compared to 2.67 by the original spynet. Note that Sintel tests use 6 level spynet.

Next version will contain 6-level end-to-end spynet.

#### Prerequisites
Install warping layer.

    cd extras/stnbhwd
    luarocks make

#### Demo

    th demo.lua

### References
Ranjan, Anurag, and Michael J. Black. "Optical Flow Estimation using a Spatial Pyramid Network." arXiv preprint arXiv:1611.00850 (2016).
