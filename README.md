# Omegawave Sports Performance Correlations

### Overview
This project included basic exploratory analysis of Omegawave wearable data to understand sports performance of football players. Data was processed and analyzed in R.

The Omegawave device measures the Central Nervous (CNS) and Cardiac systems via direct-current electroencephalograms (DC-EEG) and heart rate variability (HRV) collected via the chest strap. HRV has traditionally been studied to assess an athlete’s CNS health, with specific emphasis on the health of the sympathetic v. parasympathetic nervous systems. Because of its relationship to these measures, it also can give insight to an athlete’s resilience to stress or adaptation reserve. Having objective information about an athlete’s reserve could be incredibly useful to support training load versus recovery, provide a “readiness” factor that could make the difference in the athlete’s performance in a high-stakes game.  Another use could include determining best training times related to individual athletes’ circadian rhythm.  Overall, HRV assessment via Omegawave allows longitudinal tracking of athlete’s reserve, nervous system health, and can be used to optimize player training, performance, and rest regiments as well as coaching decisions for player selection. 

### Analysis
Exploratory Analyses were run to identify the mean, standard deviation, median, min, max, skew, kurtosis, and standard error of each variable. Next, a correlation matrix was developed to visually represent the relationship of each variable to one another. In this matrix, we see the deep red cells represent strong inverse correlations (-1), and dark blue cells represent strong correlations(+1).
![correlation matrix](https://github.com/lopezaly/sports_omegawave/blob/main/corr-matrix.png)

### Results
Focusing on the relationship between RMSSD and Activity.of.sympathetic.regulatory.mechanisms, we identify a negative correlation, r= -0.69.
![RMSSD x Act.symp.reg](https://github.com/lopezaly/sports_omegawave/blob/main/rmssd%20x%20act.symp.reg.png)

### Discussion
RMSSD is a datapoint that reflects the parasympathetic activity during the sequential period of rest. Activity of sympathetic regulatory mechanisms alternately provides the current activation of the sympathetic system. It makes sense that these measures are inversely correlated because they both work in opposition to regulate the nervous system. A higher RMSSD score indicates that an athlete is responding well to the training and has sufficient resilience. Conversely, a low RMSSD score indicates poor resilience, and thus, the sympathetic “fight or flight” system is highly active, and the body is not in a state of recovery. In football, RMSSD, could be important to determine is a running back can endure long continued sprints. It could also be useful to determine the differences in external loads during training to target strength-based training and performance.
