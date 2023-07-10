import 'package:dashboard/constants/consts.dart';
import 'package:dashboard/models/user_chat_details_model.dart';
import 'package:dashboard/models/user_details_model.dart';
import 'package:flutter/material.dart';

class DashBoardProvider extends ChangeNotifier {
  bool isProjectEdit = false;
  String menuSelectedItem = 'Async';
  String subMenuSelectedItem = 'Projects';
  int userSelectedIndex = 0;
  int userActionsTabIndex = 5;
  List<String> projectDetailsTabs = Consts().projectDetails;

  final TextEditingController projectNameEditingController = TextEditingController(text: 'Patient advocacy group Oct 2023');
  final TextEditingController projectDescEditingController = TextEditingController(text: 'Project Descriptions......');
  final TextEditingController searchUsersEditingController = TextEditingController();
  final TextEditingController chatEditingController = TextEditingController();

  List<UserDetailsModel> userDetails = Consts().userDetailsConsts;
  List<UserChatDetailsModel> userChatDetails = Consts().userChats;

  void editProject() {
    isProjectEdit = !isProjectEdit;
    notifyListeners();
  }

  void searchUsers({required String searchValue}) {
    if(searchValue.isNotEmpty) {
      userDetails = Consts().userDetailsConsts.where((user) => user.userName.toLowerCase().contains(searchValue.toLowerCase())).toList();
    } else {
      userDetails = Consts().userDetailsConsts;
    }
    notifyListeners();
  }

  void selectTappedUser({required int tappedIndex}) {
    userSelectedIndex = tappedIndex;
    notifyListeners();
  }

  void addMessageToChatList() {
    userChatDetails.add(
      UserChatDetailsModel(
          userId: userDetails[userSelectedIndex].userId,
          isOwnMessage: true,
          message: chatEditingController.text,
          time: DateTime.now(),
      ),
    );
    chatEditingController.text = '';
    notifyListeners();
  }

  void selectUserActionTab({required int tappedIndex}) {
    userActionsTabIndex = tappedIndex;
    notifyListeners();
  }

  void selectMenuItem({required String selectedItem}) {
    menuSelectedItem = selectedItem;
    if(selectedItem != 'Async') {
      subMenuSelectedItem = '';
    }
    notifyListeners();
  }

  void selectSubMenuItem({required String selectedItem}) {
    subMenuSelectedItem = selectedItem;
    if(Consts().menuTabs.any((element) => element == selectedItem)) {
      menuSelectedItem = 'Async';
    }
    notifyListeners();
  }
}
