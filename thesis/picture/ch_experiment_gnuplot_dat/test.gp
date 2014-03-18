pathin="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/d1_count_input.dat"
pathout="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/xample.eps"


set terminal eps
set output pathout
set size ratio 0.6
unset title
set xlabel "Dataset Size"
set ylabel "Running Time"
set xrange [1:20]
set key outside box 
plot pathin using 1:2 with linespoints pt 3 lt -1 title "Naive", \
pathin using 1:3 with linespoints pt 6 lt -1 title "Naive+BA", \
pathin using 1:4 with linespoints pt 8 lt -1 title "MR-Cube", \
pathin using 1:5 with linespoints pt 7 lt -1 title "TSP-Cube", \
pathin using 1:6 with linespoints pt 4 lt -1 title "TopDown-Cube"

