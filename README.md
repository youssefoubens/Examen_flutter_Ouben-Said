# Flutter Conversation App

## Overview
The Flutter Conversation App is a messaging application that allows users to view conversations, send messages, and manage their messaging experience. The app is built using the BLoC (Business Logic Component) pattern for state management, ensuring a clean separation of concerns and maintainability.

## Features
- **Conversation List Screen**: Displays a list of conversations with the following details:
  - Avatar of the contact
  - Contact name
  - Last message sent
  - Timestamp of the last message
  - Badge indicating unread messages
- **Conversation Detail Screen**: Shows the messages of a selected conversation with:
  - Visual distinction between messages sent by the user and received messages
  - A text input field to compose and send new messages

## Project Structure
The project is organized into several folders for better maintainability:
- `bloc/`: Contains the BLoC implementation for managing state.
- `models/`: Contains data models for conversations and messages.
- `screens/`: Contains the UI screens for the conversation list and conversation details.
- `widgets/`: Contains reusable widgets such as avatars and message bubbles.
- `mock/`: Contains mock data for simulating backend/API responses.

## Setup Instructions
1. Clone the repository:
   ```
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```
   cd flutter_conversation_app
   ```
3. Install the dependencies:
   ```
   flutter pub get
   ```
4. Run the application:
   ```
   flutter run
   ```

## Dependencies
This project uses the following dependencies:
- `equatable`: For creating immutable states in the BLoC pattern.

## Contribution
Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.