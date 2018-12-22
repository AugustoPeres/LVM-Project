# Model Checking the BGP
---

<center>*What is the BGP*</center>

The Border Gateway Protocol (BGP) is a protocol used to change routing information used on the internet.

Each node in the network communicates to all other nodes the cost of reaching some target node $t$. Then each node that received new information will decide whether or not it is cheaper to change route.

The question we want to answer is whether or not, at some point in time, the nodes will stop communicating. For that we will implement said protocol in promela and use the spin model checker to verify the convergence of the network.

## Introduction

Because writing promela code for networks would be very tedious and prone to lots of hard to find bugs like exchanged array indexes etc. All the `promela` programs present in this repository were created by the python script `bgp_generator.py`

---

## Usage


It shoul be used as follows:

1. run `python bgp_generator.py`
2. The following appears in the terminal:

	```
	0-Exit and generate promela code
	1-Add edge
	2-See Graph
	```
3. To add an edge choose 1. Select the origin node and the destination node.
4. To see what you have so far choose 2. This will not interfere with the rest of the process.
5. After pressing 0 the following appears:

	```
	Cost for node 1 when taking node 2:
	```
6. It should be completed, for example like:

	```
	Cost for node 1 when taking node 2:2 0 3 255
	```
7. Choose a name for the file

---

## Dependencies
* Python
* Networkx
* Matplotlib