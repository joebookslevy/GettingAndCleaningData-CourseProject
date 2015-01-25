#Getting and Cleaning Data - Course Project

This is a README file for a course project. 

##Original Project Instructions 
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data to be used for later analysis. The following are required for submission: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. There should also be a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

##About this Repo
This repo contains the following files:    
1. README.MD - file sharing context for this repo and its related efforts    
2. CodeBook.MD - code book that describes the variables, data, and any transformations in cleaning up the data    
3. run_analysis.R - this is the R code needed to accomplish the elements listed below   

##About the R Code File
From the project instructions, the R scipt should be able to do the following.    
1. Merges the training and the test sets to create one data set    
2. Extracts only the measurements on the mean and standard deviation for each measurement    
3. Uses descriptive activity names to name the activities in the data set    
4. Appropriately labels the data set with descriptive variable names    
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

##Notes for Consideration
The run_analysis.R file (e.g., R code) lists the packages needed for this work to be executed, as well as instructions for installing the zip file provided for the project (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). As this document provides an overview, one should be sure to also review the code book for context of what the data is, names of the variables, and transformation of data. From there, look to run the R code in order to accomplish the tasks of the project. It should be noted that, due to the length of the variable names, I have used camelCase to improve readability.
