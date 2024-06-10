# Box-and-Whisker Separability Map
The separability map visualizes the separability of the detection results at the target and background locations. The detection results for a hyperspectral image can be divided into two sets according to the locations of the target and background in the ground-truth map. Two colored boxes are used to display the statistical ranges of these two sets of values. The horizontal bar on each box represents the median, the edges represent the 25th and 75th percentiles, and the whiskers extend from the 0.5th to 99.5th percentiles. The degree of intersection between the two boxes reflects the degree of separation between the target and background. The smaller the amount of intersection, the stronger the ability of the detection algorithm to separate the target from the background.
# Illustrations of Separability Map
![AVIRIS_1_可分(1)](https://github.com/sxt1996/Evaluation-Metrics-for-Hyperspectral-Detection-Box-and-Whisker-Separability-Map/assets/55687887/d1ac4a6b-e759-4e48-9f27-8465b02e1f99)
# Guidelines
1. Install R2014a or higher versions of MATLAB.
2. Download this code package.
3. Set path.
4. Don't worry about importing data or anything else, just run Draw_separability_map.m.
# Contact
If you have any questions, please feel free to contact me.
sxt1996@outlook.com
