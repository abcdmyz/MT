pathin="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot_dat/d1_count_time.dat"
pathout="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot_eps/d1_count_time.eps"


set terminal eps
set output pathout
unset title
set xlabel "数据集大小"
set ylabel "运行时间(分钟)"
set xrange [6:9]
set xtics ("10^6" 6, "10^7" 7, "10^8" 8, "10^9" 9)
set key left top
plot pathin using 1:2 with linespoints pt 3 lt -1 title "Naive", \
pathin using 1:3 with linespoints pt 6 lt -1 title "Naive+BA", \
pathin using 1:4 with linespoints pt 8 lt -1 title "MR-Cube", \
pathin using 1:5 with linespoints pt 7 lt -1 title "TSP-Cube", \
pathin using 1:6 with linespoints pt 4 lt -1 title "TopDown-Cube"

