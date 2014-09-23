set title "Speedup of Airfoil on Westmere"
set xlabel "Threads"
set ylabel "Speedup over OP2 serial"

#set title font ",10"
#set key font ",7"
#set xtics font ",7"
#set ytics font ",7"
#set xlabel font ",9"
#set ylabel font ",9"

set yrange [0:]
set xrange [1:]

set pointintervalbox 1
set style line 4  linetype 1 linecolor rgb "#008000"  linewidth 1.500 pointtype 7 pointsize 0.4 pointinterval 0.5
set style line 5  linetype 1 linecolor rgb "#DC143C"  linewidth 1.500 pointtype 2 pointsize 0.4 pointinterval 0.5
set style line 6  linetype 1 linecolor rgb "#6495ED"  linewidth 1.500 pointtype 5 pointsize 0.4 pointinterval 0.5

set key bottom right

set grid

set terminal pdf
set output "speedup-intel-westmere.pdf"

plot "speedup-mpi.txt"   title 'OP2 - mpi'     with linespoint ls 6, \
     "speedup-unstaging.txt" title 'OP2 - openmp'  with linespoint ls 5, \
     "speedup-tiling.txt"  title 'OP2 - tiling'      with linespoint ls 4 \