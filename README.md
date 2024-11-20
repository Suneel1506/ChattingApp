![ChattingApp_Signup](https://github.com/user-attachments/assets/dcc659d5-a3ec-480d-b6e0-8d5a081ced4c)
![chattingApp_Login](https://github.com/user-attachments/assets/2556ec47-86f5-4de6-b46e-6796d137b1ad)
![ChattingApp_Profile](https://github.com/user-attachments/assets/eeb3e872-c33d-401d-bd9b-3f80fe184fd0)
![ChattingApp_Chats](https://github.com/user-attachments/assets/8573e0b1-b618-462d-acb8-2e6819364c04)


# Real-Time Chat App with Firebase

This is a simple **Real-Time Chat Application** developed using **Firebase Realtime Database** for message storage and **Firebase Authentication** for user authentication. 
The app allows users to sign up, log in, and send/receive text-based messages in real time.

## Key Features

1. **Real-Time Messaging**: 
   - Messages are sent and received instantly using Firebase Realtime Database, ensuring that all users see the latest messages in real-time.

2. **User Authentication**: 
   - Users can sign up and log in with their email and password using **Firebase Authentication**.

3. **Message Persistence**: 
   - All messages are stored in **Firebase Realtime Database** and persist even after the app is closed and reopened.

4. **Simple UI**: 
   - The app features a clean and user-friendly interface designed using **UIKit** to facilitate easy chatting.

## Limitations

1. **No Console Access for Firebase Storage**: 
   - Users do not have direct access to manage or view files through the Firebase Console. File management is handled entirely within the app itself.

2. **Text Messages in Firebase Realtime Database**: 
   - Only text-based messages are stored in the Firebase Realtime Database. Media files (e.g., images, videos) are managed separately in **Firebase Storage** and linked to messages in the Realtime Database.

3. **Storage Limits**: 
   - Firebase Storage is subject to Firebase's free-tier limits and pricing. Be sure to monitor storage usage when deploying to production to avoid unexpected charges.

## Technologies Used

- **Firebase Realtime Database**: 
   - Stores and syncs chat messages in real-time across users.
   
- **Firebase Authentication**: 
   - Provides email/password-based user authentication for secure login and registration.

- **Swift**: 
   - The app is developed using **Swift** for building native iOS applications.

- **UIKit**: 
   - The app's user interface is built with **UIKit**, Apple's framework for developing iOS UIs.
