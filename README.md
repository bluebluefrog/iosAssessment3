# iosAssessment3
Hello！
Our program name is "Calorie expert". This application is based on Xcode version 13.0 and is available for IOS 15.2. After 3 iterations, this is the latest version of the program.

"Calorie expert" can mainly provide a platform for people who want to lose weight to count the calories!

Our system will automatically calculate the basic metabolism based on the current weight, height, age, and gender entered by the user. According to the user's target weight, the recommended calorie intake will be displayed. Users can add what kind of food they eat and exercise routine. Our program can let people know if they should continue eating based on how many calories they have left. You can also customize the list by adding foods or exercises that are not presented in the list.

We have designed the function to be simple and clear. No redundant advertising or functionality! Most of the foods that people are likely to eat in everyday life are already displayed in the interface.

Due to a lack of familiarity with the IOS development environment, members have encountered many difficulties with code, such as converting data forms and storage locations. Also, the version mismatch caused many bugs. Some group members were unable to successfully read the saved image information using the Virtual Apple system. For data storage, we do not use a database implementation. Instead, User default is used to store data without any affiliation. This data persistence layer is not suitable for storing a large amount of data, which makes the data storage of the project difficult and needs to be initialized in the viewdidload method. It is difficult to define the type after the User default retrieves the data. If the User default data does not exist after specifying the data type, the system will report an error. So you can not define the type when fetching the data. But with a concerted effort by all, these problems can be solved eventually.

In a later stage of development, we intend to add a function to automatically read food information from QR codes. The database will automatically transmit the calorie value of the food item based on the QR code reader, and the user page will automatically display the value. On the other hand, we will also create a function that will allow the app to be connected to the mobile app. Calories burned from the user's daily walk will be automatically added to the exercise calories.

*Note: Please enter the user information before using the other functions of the program！

Thanks for your use!




Team members: Jingbin Wang 14106153
              Jiajie Xian 13737503
              Zichong Zeng 14021392
              
The link for github repository is https://github.com/bluebluefrog/iosAssessment3
              
