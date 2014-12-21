
# CodeBook

##Raw data 
Describe structure of raw data files here

/UCI HAR Dataset
|--activity_labels.txt : Links the class labels with their activity name.
|--features.txt        : List of all features.
|--features_info.txt   : Shows information about the variables used on the feature vector.
|--README.txt          : short decription standard 
|--/test
   |--/Inertial Siginals  : Sub-directory with 
   |--subject_test.txt
   |--X_test.txt
   |--y_test.txt
   |--/Inertial Siginals
|--/train
   |--/Inertial Siginals
   |--subject_test.txt
   |--X_train.txt
   |--y_train.txt
   |--/Inertial Siginals


-----------------
A simpler example, more in the zone we are aiming for:

It's very similar to a Statistical Analysis Plan, actually.

Setup, there is a dogwalking business. It wants to analyze its work.

is: name of dog, address of owner, time walked, date walked, size of dog (small, medium, or large), health of dog (well or sick) on that date and time, comments, and pay.

The business wants to assign ID# to the dogs, and codewords to the address to make this data anonymous. There isn't anything to do to the comments--since free text is all over the place.

Codebook:


columns with mean() and std() in the label were extracted into final dataset



The dog's name was transformed into an IDNumber (unique) (1-50),
the address was transformed into a factor, OwnerName (levels Alice, Bob, Charlie, Deborah, Ernest and Fred),
time and date walked were counted to make WalksPerWeek1, WalksPerWeek2, and WalksPerWeek3. Week1 begins at 00:01UTC on July1, 2014, Week2 begins at 00:01UTC on July8, 2014, Week3 begins at 00:01UTC on July15, 2014.
Health was summarized as HealthWeek1, HealthWeek2, and HealthWeek3. It is a factor with two levels, Well and Sick. If the dog was sick at any walk during that week, dog was marked sick, else dog was marked well.
Comments are dropped.
Pay is transformed into PayWeek1, PayWeek2, PayWeek3, which is a factor that has two levels (Yes, and No) for correct pay paid during that week.
Dog size is a factor with levels Small, Medium and Large
