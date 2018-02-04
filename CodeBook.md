 # Human Activities and Postural Transitions Mean and Standard Deviation CodeBook
 
 ## Overview
 
The tidydata.text is a cleaned subset of the UCI Human Activity Recognition Using smartphones Dataset. The data is taken from  http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions. The source data set contains subjects, activities and the collected data for each activity and posture from test and train data.The activities and features were associated to the corresponding entry in the train and test data. Train and test data were merged to a single data set. The descriptive statistics, specifically mean and standard deviation were extracted for each Subject and Activity. 
 
To obtain a tidy subset, the following actions were performed:

    a.  Collated corresponding test and train data using cbind and eventually merge test and train data using rbind
    b.  Transformed activity entries from numeric to activity description using the dplyr library
    c.  Removed special characters from the column headers using rsub 
    d.  Formatted Activity entries using the lettercase library
    e.  Obtained the subset of the mean and standard deviation per subject and activity (summarise_all)
    
 Data Dictionary
 
 1 Subject - The ID or identifier of the subjects. The values range from 1-30                                                      
 2 Activity - This identifies the activity being performed. 
              Possible values are: Laying,Sitting,Standing,Walking,WalkingDownstairs and WalkingUpstairs                                
 3 TBodyAccMeanX - The mean time body acceleration on the x-axis                   
 4 TBodyAccMeanY - The mean time body acceleration on the y-axis                     
 5 TBodyAccMeanZ - The mean time body acceleration on the z-axis                    
 6 TBodyAccStdX - The standard deviation time of the body acceleration on the x-axis                
 7 TBodyAccStdY - The standard deviation time of the body acceleration on the y-axis                      
 8 TBodyAccStdZ - The standard deviation time of the body acceleration on the z-axis                      
 9 TGravityAccMeanX  - The mean time gravity acceleration on the x-axis                
10 TGravityAccMeanY  - The mean time gravity acceleration on the y-axis                
11 TGravityAccMeanZ  - The mean time gravity acceleration on the z-axis                
12 TGravityAccStdX   - The standard deviation time of the gravity acceleration on the x-axis                
13 TGravityAccStdY   - The standard deviation time of the gravity acceleration on the y-axis               
14 TGravityAccStdZ   - The standard deviation of the gravity acceleration on the z-axis               
15 TBodyAccJerkMeanX - The mean time body acceleration jerk of the body on the x-axis               
16 TBodyAccJerkMeanY - The mean time body acceleration jerk of the body on the y-axis                
17 TBodyAccJerkMeanZ - The mean time body acceleration jerk of the body on the z-axis               
18 TBodyAccJerkStdX  - The standard deviation time body acceleration jerk of the body on the x-axis                
19 TBodyAccJerkStdY  - The standard deviation time body acceleration jerk of the body on the y-axis                  
20 TBodyAccJerkStdZ  - The standard deviation time body acceleration jerk of the body on the z-axis                  
21 TBodyGyroMeanX    - The mean time of the body from the gyroscope on the x-axis                  
22 TBodyGyroMeanY    - The mean time of the body from the gyroscope on the y-axis                
23 TBodyGyroMeanZ    - The mean time of the body from the gyroscope on the z-axis                
24 TBodyGyroStdX     - The standard deviation time of the body from the gyroscope on the x-axis                
25 TBodyGyroStdY     - The standard deviation time of the body from the gyroscope on the y-axis                  
26 TBodyGyroStdZ     - The standard deviation time of the body from the gyroscope on the z-axis                 
27 TBodyGyroJerkMeanX - The mean time of the body from the gyroscope and jerk signals on the x-axis                 
28 TBodyGyroJerkMeanY - The mean time of the body from the gyroscope and jerk signals on the y-axis                
29 TBodyGyroJerkMeanZ - The mean time of the body from the gyroscope and jerk signals on the z-axis                     
30 TBodyGyroJerkStdX  - The standard deviation time of the body from the gyroscope and jerk signals on the x-axis                     
31 TBodyGyroJerkStdY  - The standard deviation time of the body from the gyroscope and jerk signals on the y-axis              
32 TBodyGyroJerkStdZ  - The standard deviation time of the body from the gyroscope and jerk signals on the z-axis              
33 TBodyAccMagMean    - The mean magnitude of the body acceleration                 
34 TBodyAccMagStd     - The standard deviation magnitude of the body acceleration                  
35 TGravityAccMagMean - The mean magnitude of the gravity acceleration                  
36 TGravityAccMagStd  - The standard deviation magnitude of the gravity acceleration                
37 TBodyAccJerkMagMean  - The mean magnitude of the body acceleration in terms of jerk signals              
38 TBodyAccJerkMagStd   - The standard deviation magnitude of the body acceleration in terms of jerk signals              
39 TBodyGyroMagMean     - The mean magnitude of the body measured from gyroscope             
40 TBodyGyroMagStd      - The standard devation magnitude of the body measured from gyroscope              
41 TBodyGyroJerkMagMean  - The mean magnitude of the body measured from gyroscope and jerk signals           
42 TBodyGyroJerkMagStd   - The standard devation magnitude of the body measured from gyroscope and jerk signals             
43 FBodyAccMeanX - The mean body acceleration on the x-axis using Fast Fourier Transformation (FFT)                      
44 FBodyAccMeanY - The mean body acceleration on the y-axis using Fast Fourier Transformation (FFT)                    
45 FBodyAccMeanZ - The mean body acceleration on the z-axis using Fast Fourier Transformation (FFT)                    
46 FBodyAccStdX - The standard deviation of the body acceleration on the x-axis using Fast Fourier Transformation (FFT)                
47 FBodyAccStdY  - The standard deviation of the body acceleration on the y-axis using Fast Fourier Transformation (FFT)                
48 FBodyAccStdZ - The standard deviation of the body acceleration on the z-axis using Fast Fourier Transformation (FFT)                 
49 FBodyAccMeanFreqX - The mean frequency of the body acceleration on the x-axis using Fast Fourier Transformation (FFT)                  
50 FBodyAccMeanFreqY - The mean frequency of the body acceleration on the y-axis using Fast Fourier Transformation (FFT)                 
51 FBodyAccMeanFreqZ - The mean frequency of the body acceleration on the z-axis using Fast Fourier Transformation (FFT)                 
52 FBodyAccJerkMeanX - The mean of the body acceleration on the x-axis from jerk signals using Fast Fourier Transformation (FFT)          
53 FBodyAccJerkMeanY - The mean of the body acceleration on the y-axis from jerk signals using Fast Fourier Transformation (FFT)          
54 FBodyAccJerkMeanZ - The mean of the body acceleration on the z-axis from jerk signals using Fast Fourier Transformation (FFT)         
55 FBodyAccJerkStdX - The standard deviation of the body acceleration on the x-axis from jerk signals using Fast Fourier Transformation (FFT)         
56 FBodyAccJerkStdY - The standard deviation of the body acceleration on the y-axis from jerk signals using Fast Fourier Transformation (FFT)                          
57 FBodyAccJerkStdZ - The standard deviation of the body acceleration on the z-axis from jerk signals using Fast Fourier Transformation (FFT)                         
58 FBodyAccJerkMeanFreqX - The mean frequency of the body acceleration on the x-axis from jerk signals using Fast Fourier Transformation (FFT)                      
59 FBodyAccJerkMeanFreqY - The mean frequency of the body acceleration on the y-axis from jerk signals using Fast Fourier Transformation (FFT)                                
60 FBodyAccJerkMeanFreqZ - The mean frequency of the body acceleration on the z-axis from jerk signals using Fast Fourier Transformation (FFT)                               
61 FBodyGyroMeanX - The mean of the body from the gyroscope on the x-axis using Fast Fourier Transformation (FFT)                    
62 FBodyGyroMeanY - The mean of the body from the gyroscope on the y-axis using Fast Fourier Transformation (FFT)                      
63 FBodyGyroMeanZ - The mean of the body from the gyroscope on the z-axis using Fast Fourier Transformation (FFT)                   
64 FBodyGyroStdX - The standard deviation of the body from the gyroscope on the x-axis using Fast Fourier Transformation (FFT)                   
65 FBodyGyroStdY - The standard deviation of the body from the gyroscope on the y-axis using Fast Fourier Transformation (FFT)                     
66 FBodyGyroStdZ  - The standard deviation of the body from the gyroscope on the z-axis using Fast Fourier Transformation (FFT)                   
67 FBodyGyroMeanFreqX - The mean frequency of the body from the gyroscope on the x-axis using Fast Fourier Transformation (FFT)                 
68 FBodyGyroMeanFreqY  - The mean frequency of the body from the gyroscope on the y-axis using Fast Fourier Transformation (FFT)               
69 FBodyGyroMeanFreqZ - The mean frequency of the body from the gyroscope on the z-axis using Fast Fourier Transformation (FFT)                
70 FBodyAccMagMean  - The mean magnitude of the body acceleration using Fast Fourier Transformation (FFT)                   
71 FBodyAccMagStd   - The standard deviation magnitude of the body acceleration using Fast Fourier Transformation (FFT)                 
72 FBodyAccMagMeanFreq - The mean frequency magnitude of the body acceleration using Fast Fourier Transformation (FFT)               
73 FBodyBodyAccJerkMagMean - The mean magnitude of the body acceleration from jerk signals using Fast Fourier Transformation (FFT)          
74 FBodyBodyAccJerkMagStd - The standard deviation magnitude of the body acceleration from jerk signals using Fast Fourier Transformation (FFT)          
75 FBodyBodyAccJerkMagMeanFreq  - The mean frequency magnitude of the body acceleration from jerk signals using Fast Fourier Transformation (FFT)              
76 FBodyBodyGyroMagMean - The mean magnitude of the body from gyroscope using Fast Fourier Transformation (FFT)                     
77 FBodyBodyGyroMagStd - The standard deviation magnitude of the body from gyroscope using Fast Fourier Transformation (FFT)                
78 FBodyBodyGyroMagMeanFreq - The mean frequency magnitude of the body from gyroscope using Fast Fourier Transformation (FFT)           
79 FBodyBodyGyroJerkMagMean - The mean magnitude of the body from gyroscope and jerk signals using Fast Fourier Transformation (FFT)       
80 FBodyBodyGyroJerkMagStd  - The mean magnitude of the body from gyroscope and jerk signals using Fast Fourier Transformation (FFT)         
81 FBodyBodyGyroJerkMagMeanFreq  - The mean magnitude of the body from gyroscope and jerk signals using Fast Fourier Transformation (FFT)   
82 AngleTBodyAccMeanGravity - The mean gravity of the angle of the body acceleration      
83 AngleTBodyAccJerkMeangravityMean - The mean gravity of the angle of the body acceleration from jerk signals

84 AngleTBodyGyroMeanGravityMean  - The mean gravity of the angle of the body acceleration from gyroscope  
85 AngleTBodyGyroJerkMeanGravityMean - The mean gravity of the angle of the body acceleration from gyroscope and jerk signals

86 AngleXGravityMean - The mean gravity of the angle on x-axis               
87 AngleYGravityMean - The mean gravity of the angle on y-axis                
88 AngleZGravityMean - The mean gravity of the angle on z-axis 
