Tried constructing an 11x11 = 121 grid of DMSOs, but got a segmentation fault

Procedure for changing this grid:

In this folder,
1. run system_prep.ipynb with a desired grid
2. edit topol.top to modify the number of DMSOs
3. run 2.make_index.sh

In the testfolder,
1. run 1.grompp.sh
2. run 2.mdrun.sh
3. run 3.makewhole.sh
4. run Look_at_traj.ipynb to see results

I know a 6x6 works at a height of 4.0, but 9x9 crashs

It works to stack the layers
- 6x6 at 4.0 and 5x5 at 9.0 (61 in all) works, but some DMSO molecules cross the periodic boundary in z

- 6x6 at 4.0 and 5x5 at 9.0 (61 in all) with layers at 3.2 and 8.5 above the surface, with a 1st annealing at 100K, followed by a 2nd annealing at 224K seems to keep all the DMSO molecules at the top surface of the ice (not crossing the periodic boundary in z). The final state of the latter run (confout.gro) was copied into the parent folder (DMSO_60) as System0_annealed.gro. That's the configuration that subsequent runs should use as a starting point.
