echo 0 | gmx trjconv -f traj.trr -s topol.tpr -pbc whole -o traj_whole_1ps.xtc -dt 1
echo 0 | gmx trjconv -f confout.gro -o confout.pdb