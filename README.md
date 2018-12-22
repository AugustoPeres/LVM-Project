# Model Checking the BGP
---

## Usage

In this repository there is python script that generates `promela` our promela code.

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