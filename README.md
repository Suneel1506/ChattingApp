![ChattingApp_Signup](https://github.com/user-attachments/assets/dcc659d5-a3ec-480d-b6e0-8d5a081ced4c)
![chattingApp_Login](https://github.com/user-attachments/assets/2556ec47-86f5-4de6-b46e-6796d137b1ad)
![ChattingApp_Profile](https://github.com/user-attachments/assets/eeb3e872-c33d-401d-bd9b-3f80fe184fd0)
![ChattingApp_Chats](https://github.com/user-attachments/assets/8573e0b1-b618-462d-acb8-2e6819364c04)


**Chatting App with Firebase Realtime Database (Swift)**

This is a simple real-time chat application developed using Firebase Realtime Database for message storage and Firebase Authentication for user authentication. This app allows users to send and receive text-based messages in real time.

**Key Features:**
1.Real-Time Messaging: Messages are sent and received instantly using Firebase Realtime Database.
2.User Authentication: Users can sign up and log in via Firebase Authentication (using email/password).
3.Message Persistence: All messages are stored in Firebase Realtime Database and persist even after closing and reopening the app.
4.Simple UI: The app has a clean, user-friendly interface to facilitate chatting.

**Limitations:**
1.No Console Access for Firebase Storage: Users do not have direct access to manage or view files through the Firebase Console. File management is done through the app itself.
2.Text Messages in Realtime Database: Only text messages are stored in the Firebase Realtime Database. Media files are handled separately in Firebase Storage and linked to messages in the database.
3.Storage Limits: Firebase Storage usage is subject to Firebase's free-tier limits and pricing. Ensure to monitor storage usage for production apps.

**Technologies Used:**
1.Firebase Realtime Database: For storing and syncing chat messages in real-time.
2.Firebase Authentication: For user registration and login.
3.Swift: The app is developed using Swift for iOS.
4.UIKit: To design and implement the user interface for the chat application.

**Setup Instructions:**
1.Clone this repository to your local machine.
2.Open the project in Xcode.
3.Install dependencies using CocoaPods or Swift Package Manager (if required).
4.Set up a Firebase project in the Firebase Console.
5.Add your Firebase GoogleService-Info.plist to the Xcode project.
6.Set up Firebase Realtime Database and Firebase Authentication in your Firebase project.
7.Run the app on your iOS device or simulator.

**How It Works:**
1.Sign Up / Login: Users can register and log in using email/password via Firebase Authentication.
2.Send Messages: Once logged in, users can send text messages which are saved in Firebase Realtime Database and appear instantly for both users in the chat room.
3.Message Sync: Messages are synchronized across devices in real-time, thanks to Firebase Realtime Database.
