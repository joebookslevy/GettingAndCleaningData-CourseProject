#Code Book
##Source Data
A full description of the data set used for this project can be found on this website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones     
The source data for this project can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip    

##Explanation of Source Data
The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

For each record, it is provided:    
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.    
- Triaxial Angular velocity from the gyroscope.     
- A 561-feature vector with time and frequency domain variables.     
- Its activity label.     
- An identifier of the subject who carried out the experiment.    

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these time signals to produce frequency domain signal variables.     

##Data Transformations and Clean Up
The following transformations and clean up actions occurred to the data:     
1. X and Y test data were imported      
2. Only mean and standard deviation features were used for each, eliminating several other sets of variables from this data     
3. X and Y test data was combined to one data set, with activity ID removed (this latter element cleaned up the data since activity ID and activity label were basically duplicates)     
4. Steps 1-3 were performed for the train data     
5. Test and train data were combined/merged into one large data set     
6. Independent tidy data set was created with the average of each variable for each activity and each subject     
7. To tidy up the data and make the variable names easier to read, unnecessary characters removed (e.g., () and -), initials were replaced with their appropriate words (e.g., t replaced for time, f replaced with frequency), abbreviations were replaced with their appropriate words (e.g., ACC replaced for Accelerometer, Gyro replaced for Gyroscope)     
8. As a final step to tidy up the data, variable names were adjusted to be in camelCase for easier reading of their names     


##Resulting Variables 
Subject - subject number; unique identifier of 1-30 was given to each subject      

Activity Label - label of activity subject was performing; six different activities:         
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Walking    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Walking_Upstairs    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Walking_Downstairs    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sitting   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Standing    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Laying

timeBodyAccelerometerMeanX      
Mean of time domain signal from accelerometer of body acceleration on x axis     

timeBodyAccelerometerMeanY      
Mean of time domain signal from accelerometer of body acceleration on y axis     

timeBodyAccelerometerMeanZ      
Mean of time domain signal from accelerometer of body acceleration on z axis     

timeBodyAccelerometerStdX           
Standard deviation of time domain signal from accelerometer of body acceleration on x axis                          

timeBodyAccelerometerStdY          
Standard deviation of time domain signal from accelerometer of body acceleration on y axis                           

timeBodyAccelerometerStdZ         
Standard deviation of time domain signal from accelerometer of body acceleration on z axis                                          

timeGravityAccelerometerMeanX         
Mean of time domain signal from accelerometer of gravity acceleration on x axis           

timeGravityAccelerometerMeanY     
Mean of time domain signal from accelerometer of gravity acceleration on y axis            

timeGravityAccelerometerMeanZ     
Mean of time domain signal from accelerometer of gravity acceleration on z axis            

timeGravityAccelerometerStdX     
Standard deviation of time domain signal from accelerometer of gravity acceleration on x axis                                         

timeGravityAccelerometerStdY     
Standard deviation of time domain signal from accelerometer of gravity acceleration on y axis                          

timeGravityAccelerometerStdZ     
Standard deviation of time domain signal from accelerometer of gravity acceleration on z axis                          

timeBodyAccelerometerJerkMeanX     
Mean jerk signal of body linear acceleration and angular velocity from time domain of accelerometer of body acceleration on x axis     

timeBodyAccelerometerJerkMeanY     
Mean jerk signal of body linear acceleration and angular velocity from time domain of accelerometer of body acceleration on y axis     

timeBodyAccelerometerJerkMeanZ     
Mean jerk signal of body linear acceleration and angular velocity from time domain of accelerometer of body acceleration on z axis     

timeBodyAccelerometerJerkStdX     
Standard deviation jerk signal of body linear acceleration and angular velocity from time domain of accelerometer of body acceleration on x axis                

timeBodyAccelerometerJerkStdY     
Standard deviation jerk signal of body linear acceleration and angular velocity from time domain of accelerometer of body acceleration on y axis     

timeBodyAccelerometerJerkStdZ     
Standard deviation jerk signal of body linear acceleration and angular velocity from time domain of accelerometer of body acceleration on z axis     

timeBodyGyroscopeMeanX     
Mean of time domain signal from gyroscope of body acceleration on x axis      

timeBodyGyroscopeMeanY     
Mean of time domain signal from gyroscope of body acceleration on y axis     

timeBodyGyroscopeMeanZ    
Mean of time domain signal from gyroscope of body acceleration on z axis     

timeBodyGyroscopeStdX    
Standard deviation of time domain signal from gyroscope of body acceleration on x axis                         

timeBodyGyroscopeStdY    
Standard deviation of time domain signal from gyroscope of body acceleration on y axis     

timeBodyGyroscopeStdZ    
Standard deviation of time domain signal from gyroscope of body acceleration on z axis     

timeBodyGyroscopeJerkMeanX    
Mean jerk signal of body linear acceleration and angular velocity from gyroscope of body acceleration on x axis                    

timeBodyGyroscopeJerkMeanY    
Mean jerk signal of body linear acceleration and angular velocity from gyroscope of body acceleration on y axis      

timeBodyGyroscopeJerkMeanZ    
Mean jerk signal of body linear acceleration and angular velocity from gyroscope of body acceleration on z axis      

timeBodyGyroscopeJerkStdX     
Standard deviation jerk signal of body linear acceleration and angular velocity from gyroscope of body acceleration on x axis                      

timeBodyGyroscopeJerkStdY     
Standard deviation jerk signal of body linear acceleration and angular velocity from gyroscope of body acceleration on y axis     

timeBodyGyroscopeJerkStdZ    
Standard deviation jerk signal of body linear acceleration and angular velocity from gyroscope of body acceleration on z axis     

timeBodyAccelerometerMagMean     
Mean of magnitude of three-dimensional time signals from accelerometer of body acceleration calculated using the Euclidean norm                  

timeBodyAccelerometerMagStd    
Standard deviation of magnitude of three-dimensional time signals from accelerometer of body acceleration calculated using the Euclidean norm     

timeGravityAccelerometerMagMean     
Mean of magnitude of three-dimensional time signals from accelerometer of gravity acceleration calculated using the Euclidean norm    

timeGravityAccelerometerMagStd     
Standard deviation of magnitude of three-dimensional time signals from accelerometer of gravity acceleration calculated using the Euclidean norm     

timeBodyAccelerometerJerkMagMean     
Mean magnitude of three-dimensional time signals with jerk signal from accelerometer of body acceleration      

timeBodyAccelerometerJerkMagStd     
Standard deviation magnitude of three-dimensional time signals with jerk signal from accelerometer of body acceleration     

timeBodyGyroscopeMagMean     
Mean of magnitude of three-dimensional time signals from accelerometer of gravity acceleration calculated using the Euclidean norm     

timeBodyGyroscopeMagStd    
Standard deviation of magnitude of three-dimensional time signals from accelerometer of gravity acceleration calculated using the Euclidean norm     

timeBodyGyroscopeJerkMagMean    
Mean magnitude of three-dimensional time signals with jerk signal from gyroscope of body acceleration         

timeBodyGyroscopeJerkMagStd    
Standard deviation magnitude of three-dimensional time signals with jerk signal from gyroscope of body acceleration                   

frequencyBodyAccelerometerMeanX    
Mean of frequency domain signal from accelerometer of body acceleration on x axis     

frequencyBodyAccelerometerMeanY   
Mean of frequency domain signal from accelerometer of body acceleration on y axis     

frequencyBodyAccelerometerMeanZ     
Mean of frequency domain signal from accelerometer of body acceleration on z axis                

frequencyBodyAccelerometerStdX     
Standard deviation of frequency domain signal from accelerometer of body acceleration on x axis     

frequencyBodyAccelerometerStdY     
Standard deviation of frequency domain signal from accelerometer of body acceleration on y axis     

frequencyBodyAccelerometerStdZ    
Standard deviation of frequency domain signal from accelerometer of body acceleration on z axis               

frequencyBodyAccelerometerMeanFreqX     
Weighted average of the frequency components to obtain a mean frequency of frequency domain signal from accelerometer of body acceleration on x axis      

frequencyBodyAccelerometerMeanFreqY    
Weighted average of the frequency components to obtain a mean frequency of frequency domain signal from accelerometer of body acceleration on y axis           

frequencyBodyAccelerometerMeanFreqZ     
Weighted average of the frequency components to obtain a mean frequency of frequency domain signal from accelerometer of body acceleration on z axis         

frequencyBodyAccelerometerJerkMeanX    
Mean jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on x axis           

frequencyBodyAccelerometerJerkMeanY     
Mean jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on y axis            

frequencyBodyAccelerometerJerkMeanZ    
Mean jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on z axis           

frequencyBodyAccelerometerJerkStdX     
Standard deviation jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on x axis            

frequencyBodyAccelerometerJerkStdY    
Standard deviation jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on y axis            

frequencyBodyAccelerometerJerkStdZ    
Standard deviation jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on z axis     

frequencyBodyAccelerometerJerkMeanFreqX    
Weighted average of the frequency components to obtain a mean frequency of frequency domain jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on x axis      

frequencyBodyAccelerometerJerkMeanFreqY    
Weighted average of the frequency components to obtain a mean frequency of frequency domain jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on y axis       

frequencyBodyAccelerometerJerkMeanFreqZ    
Weighted average of the frequency components to obtain a mean frequency of frequency domain jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration on z axis        

frequencyBodyGyroscopeMeanX    
Mean of frequency domain signal from gyroscope of body acceleration on x axis                   

frequencyBodyGyroscopeMeanY    
Mean of frequency domain signal from gyroscope of body acceleration on y axis        

frequencyBodyGyroscopeMeanZ    
Mean of frequency domain signal from gyroscope of body acceleration on z axis                   

frequencyBodyGyroscopeStdX     
Standard deviation of frequency domain signal from gyroscope of body acceleration on x axis                    

frequencyBodyGyroscopeStdY     
Standard deviation of frequency domain signal from gyroscope of body acceleration on y axis                    

frequencyBodyGyroscopeStdZ    
Standard deviation of frequency domain signal from gyroscope of body acceleration on z axis                   

frequencyBodyGyroscopeMeanFreqX    
Weighted average of the frequency components to obtain a mean frequency of frequency domain signal from gyroscope of body acceleration on x axis     

frequencyBodyGyroscopeMeanFreqY    
Weighted average of the frequency components to obtain a mean frequency of frequency domain signal from gyroscope of body acceleration on y axis     

frequencyBodyGyroscopeMeanFreqZ    
Weighted average of the frequency components to obtain a mean frequency of frequency domain signal from gyroscope of body acceleration on z axis    

frequencyBodyAccelerometerMagMean     
Mean of magnitude of three-dimensional frequency signals from accelerometer of body acceleration calculated using the Euclidean norm     

frequencyBodyAccelerometerMagStd    
Standard deviation of magnitude of three-dimensional frequency signals from accelerometer of body acceleration calculated using the Euclidean norm     

frequencyBodyAccelerometerMagMeanFreq     
Mean magnitude of three-dimensional weighted average of the frequency components with jerk signal from accelerometer of body acceleration      

frequencyBodyAccelerometerJerkMagMean    
Mean magnitude of three-dimensional time signals with jerk signal from accelerometer of body acceleration     

frequencyBodyAccelerometerJerkMagStd    
Standard deviation magnitude of three-dimensional time signals with jerk signal from accelerometer of body acceleration     

frequencyBodyAccelerometerJerkMagMeanFreq    
Weighted average of three-dimensional frequency signals to obtain a mean frequency of frequency domain jerk signal of body linear acceleration and angular velocity from frequency domain of accelerometer of body acceleration    

frequencyBodyGyroscopeMagMean    
Mean of magnitude of three-dimensional frequency signals from accelerometer of gyroscope acceleration calculated using the Euclidean norm     

frequencyBodyGyroscopeMagStd     
Standard deviation of magnitude of three-dimensional frequency signals from accelerometer of gyroscope acceleration calculated using the Euclidean norm     

frequencyBodyGyroscopeMagMeanFreq    
Mean magnitude of three-dimensional weighted average of the frequency components with jerk signal from gyroscope of body acceleration                 

frequencyBodyGyroscopeJerkMagMean    
Mean magnitude of three-dimensional time signals with jerk signal from gyroscope of body acceleration     

frequencyBodyGyroscopeJerkMagStd     
Standard deviation magnitude of three-dimensional time signals with jerk signal from gyroscope of body acceleration     

frequencyBodyGyroscopeJerkMagMeanFreq    
Weighted average of three-dimensional frequency signals to obtain a mean frequency of frequency domain jerk signal of body linear acceleration and angular velocity from frequency domain of gyroscope of body acceleration         




