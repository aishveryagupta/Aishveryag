# PREDICTION USING SUPERVISED MACHINE LEARNING ( LEVEL - BEGINNER) 
# TASK1: Predict the percentage of a Student based on number of hours of Study.
# STEP1:Read the csv file.
file <- read.csv("C:\\Users\\HP\\Desktop\\Aishverya\\TSF-GRIP-INTERNSHIP\\Task1_Student_score.csv")
# STEP2:View the data
print(file)
# STEP3: Create a linear model
relate <- lm(SCORES~HOURS,data=file)
print(relate)
# STEP4: Predict the score when the student studied for 9.25 hrs
stud <- data.frame(HOURS=9.25)
prediction <- predict(relate, stud) 
print(prediction)
# STEP5: Visualizing Regreesion Graphically
png("Task1_LinearRegression.jpg")
plot(x=file$HOURS, y=file$SCORES, main="Study Hours and Scores", col="yellow", abline(relate), xtab="HOURS", ytab="SCORES", xlim=c(1,10), ylim=c(20,100), pch=16)
dev.off()
