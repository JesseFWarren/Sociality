# Sociality

Documentation and user guide
This project is being made using Flutter and an Android Developer emulator
The project is currently broke up into 2 parts

Part 1: Main application and interface
  In the lib folder are the files for this interface.
  The following are the directory listings
    Main.dart: main dart file
    Screens directory
      createSuvey.dart
      home.dart
      SearchPage.dart
      notifications_page.dart
      settings_page.dart
  
  The project can be opened with the following command
    flutter run
  The application has five main screens
    Home screen: Currently has scrolling functionality with each square corresponding to a survey
    Create Survey page: Has text boxes for users to create surveys. Currently data is erased from text boxes when screens are switch.
      The next phase of this project would be allowing user created surveys to appear on the home page.
    Search screen: Currently has a working search bar, although there is nothing to search for yet.
    Notifcations screen: similar to the home screen the scrolling function works and each box is intended to host a notification.
    Settings screen: Allows the user to log out of the application.
  The navigation bar at the bottom is used to switch between screens.
   
Part 2: Log in interface
  In the login folder are the files for this interface.
  The following are the directory listings
    main.dart
    login.dart
    register.dart
   
  The application has two main screens
    Log in screen: for returning users to log into the application
    Register screen: for new users to create an account
    
 Thoughts from the previous Interns:
 We had a little trouble connecting the 2 interfaces due to technical issues. However this can be done by adding login.dart and register.dart to the screens folder
 and altering the main.dart file to adjust for these changes.
 The next big step in the project will be adding survey creation. It may be easier to handle this through a database that stores and pulls the information to the home   screen as needed. Additionally, this would make the sorting feature to sort by recent or most popular much more feasible.
 
 There is a document that contains a framework/template for how the app looks and functions. This can also be used to understand how our ideas fit into the project.
 
 The code itself should not be too hard to understand. With a little flutter knowledge our decisions should make sense.
