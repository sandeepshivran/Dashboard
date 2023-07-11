
import 'package:dashboard/models/user_chat_details_model.dart';
import 'package:dashboard/models/user_details_model.dart';

class Consts {
  List<UserDetailsModel> userDetailsConsts = [
    const UserDetailsModel(userId: 1, imagePath: 'assets/user1.png', userName: 'John', userDescription: 'Contrary to popular belief, Loren lpsum', time: 'Oct-10, 3:10'),
    const UserDetailsModel(userId: 2, imagePath: 'assets/user2.jpeg', userName: 'William', userDescription: 'Various versions have evolved', time: 'Sunday'),
    const UserDetailsModel(userId: 3, imagePath: 'assets/user3.png', userName: 'Abramovits', userDescription: "Hi everyone, let's start the...", time: 'Sunday'),
    const UserDetailsModel(userId: 4, imagePath: 'assets/user4.png', userName: 'Lara', userDescription: "It's a long established fact that...", time: 'Sunday'),
    const UserDetailsModel(userId: 5, imagePath: 'assets/user5.jpeg', userName: 'Moderator,Attendee1', userDescription: 'John,Smith and Jones...', time: 'Sunday'),
    const UserDetailsModel(userId: 6, imagePath: 'assets/user6.jpeg', userName: 'Moderator,Attendee2', userDescription: 'Lara,Abramovtis and Jones...', time: '31/03/2022'),
  ];

  List<UserChatDetailsModel> userChats = [
    UserChatDetailsModel(userId: 1, isOwnMessage: true, message: "Contrary to popular belief, Lorem lpsum is not simply random text", time: DateTime.now()),
    UserChatDetailsModel(userId: 1, isOwnMessage: false, message: "Various versions have evolved over the years", time: DateTime.now()),
    UserChatDetailsModel(userId: 1, isOwnMessage: false, message: "It is a long established fact that a reader will be distracted by the readable content of the page", time: DateTime(2023,07,08,06,57,0,0,0)),
    UserChatDetailsModel(userId: 1, isOwnMessage: true, message: "The release of latest sheets containing Lorem lpsum passages", time: DateTime(2023,07,08,06,57,0,0,0)),
    UserChatDetailsModel(userId: 1, isOwnMessage: false, message: "Hi everyone, let's start the call soon", time: DateTime(2023,07,08,06,57,0,0,0)),
  ];

  List<String> projectDetails = [
    'Summary',
    'Participants',
    'Polls',
    'Q & A',
    'Content',
    'Chat',
    'Engagements',
    'Travel',
    'Invoices',
    'History',
  ];

  List<String> menuTabs = ['Home', 'Projects', 'Engagements', 'Polls', "Q & A's", 'Content', 'Travel', 'Invoices', 'Reports & Analytics',];
}
