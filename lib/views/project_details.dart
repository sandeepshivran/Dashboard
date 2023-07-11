
import 'package:dashboard/providers/dashboardProvider.dart';
import 'package:dashboard/views/title_description_details.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: const Color(0xFFf2f2f1),
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: 'Projects/',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Project Details',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF29376b),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 36,
                            width: 400,
                            child: TextField(
                              controller: context.watch<DashBoardProvider>().projectNameEditingController,
                              textAlignVertical: TextAlignVertical.center,
                              readOnly: context.watch<DashBoardProvider>().isProjectEdit ? false : true,
                              enabled: context.watch<DashBoardProvider>().isProjectEdit,
                              decoration: context.watch<DashBoardProvider>().isProjectEdit ?
                              const InputDecoration() :
                              const InputDecoration(
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF29376b),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: ElevatedButton(
                              onPressed: () {
                                context.read<DashBoardProvider>().editProject();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2a3b4e),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              child: Text(
                                context.watch<DashBoardProvider>().isProjectEdit ?
                                'Save Project' : 'Edit Project',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 36,
                        width: 400,
                        child: TextField(
                          controller: context.watch<DashBoardProvider>().projectDescEditingController,
                          textAlignVertical: TextAlignVertical.center,
                          readOnly: context.watch<DashBoardProvider>().isProjectEdit ? false : true,
                          enabled: context.watch<DashBoardProvider>().isProjectEdit,
                          decoration: context.watch<DashBoardProvider>().isProjectEdit ?
                          const InputDecoration() :
                          const InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Project Information',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF29376b),
                              ),
                            ),
                            TitleDescriptionDetails(title: 'Product Name', description: 'LEO'),
                            TitleDescriptionDetails(title: 'Project ID', description: '-'),
                            TitleDescriptionDetails(title: 'Start Date', description: '10/15/2023'),
                            TitleDescriptionDetails(title: 'End Date', description: '10/21/2023'),
                            SizedBox(
                              height: 47.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Project Information',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF29376b),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: const Color(0xFFf2f2f1),
                                      ),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TitleDescriptionDetails(
                                            title: 'Will the project include engagements?',
                                            description: 'Yes',
                                            startPadding: EdgeInsets.only(top: 20.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'Will the project include polls?',
                                            description: 'No',
                                            startPadding: EdgeInsets.only(top: 8.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'Will any of the participant be paid in the project?',
                                            description: 'No',
                                            startPadding: EdgeInsets.only(top: 8.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'Will project include content review?',
                                            description: 'No',
                                            startPadding: EdgeInsets.only(top: 8.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'Will chat feature be enabled?',
                                            description: 'Yes',
                                            startPadding: EdgeInsets.only(top: 8.0, bottom: 28.0, left: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 16.0),
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: const Color(0xFFf2f2f1),
                                      ),
                                      child: const Column(
                                        children: [
                                          TitleDescriptionDetails(
                                            title: 'How many engagements ?',
                                            description: '2',
                                            startPadding: EdgeInsets.only(top: 20.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'How many polls ?',
                                            description: '5',
                                            startPadding: EdgeInsets.only(top: 8.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'What is the budget ?',
                                            description: '-',
                                            startPadding: EdgeInsets.only(top: 8.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'Will the project include moderators?',
                                            description: 'Yes',
                                            startPadding: EdgeInsets.only(top: 8.0, left: 12.0),
                                          ),
                                          TitleDescriptionDetails(
                                            title: 'Select the type of participants allowed for the project',
                                            description: 'Type1, Type2',
                                            startPadding: EdgeInsets.only(top: 8.0, bottom: 20.0, left: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50.0,
                      margin: const EdgeInsets.symmetric(horizontal: 14.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: ListView.builder(
                        itemCount: context.watch<DashBoardProvider>().projectDetailsTabs.length,
                        padding: const EdgeInsets.only(top: 20.0, left: 16.0),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: InkWell(
                              onTap: () {
                                context.read<DashBoardProvider>().selectUserActionTab(tappedIndex: index);
                              },
                              child: Container(
                                decoration: index == context.watch<DashBoardProvider>().userActionsTabIndex ?
                                const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xFF29376b),
                                      width: 1.0,
                                    ),
                                  ),
                                ) : null,
                                child: Text(
                                  context.watch<DashBoardProvider>().projectDetailsTabs[index],
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, right: 32.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 12.0,
                          backgroundColor: Color(0xFF55b0ab),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ),
                    if(context.watch<DashBoardProvider>().projectDetailsTabs[context.watch<DashBoardProvider>().userActionsTabIndex] == 'Chat')
                      Container(
                      margin: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0, top: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color(0xFFf2f2f1),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 36,
                                  margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 16.0),
                                  child: TextField(
                                    controller: context.watch<DashBoardProvider>().searchUsersEditingController,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Search',
                                      prefixIcon: const Icon(Icons.search),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                            color: Colors.black38,
                                          )
                                      ),
                                    ),
                                    onChanged: (value) {
                                      context.read<DashBoardProvider>().searchUsers(searchValue: value);
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 16.0),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: CircleAvatar(
                                              radius: 22.0,
                                              backgroundImage: AssetImage(context.watch<DashBoardProvider>().userDetails[context.watch<DashBoardProvider>().userSelectedIndex].imagePath),
                                            ),
                                          ),
                                          const Positioned(
                                            right: 2,
                                            bottom: 3,
                                            child: CircleAvatar(
                                              radius: 5.0,
                                              backgroundColor: Color(0xFF6fd451),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            context.watch<DashBoardProvider>().userDetails[context.watch<DashBoardProvider>().userSelectedIndex].userName,
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'Online',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 3,
                                child: ListView.builder(
                                  itemCount: context.watch<DashBoardProvider>().userDetails.length,
                                  padding: const EdgeInsets.only(bottom: 20.0, top: 8.0),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: const ClampingScrollPhysics(),
                                  itemBuilder: (_, index) {
                                    return InkWell(
                                      onTap: () {
                                        context.read<DashBoardProvider>().selectTappedUser(tappedIndex: index);
                                      },
                                      child: Container(
                                        margin: index == context.watch<DashBoardProvider>().userSelectedIndex ?
                                        const EdgeInsets.only(left: 10.0) : null,
                                        decoration: index == context.watch<DashBoardProvider>().userSelectedIndex
                                            ? BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: const Color(0xFF55b0ab),
                                        )
                                            : const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.black38,
                                              width: .5,
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10.0, bottom: 14.0, top: 10.0),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 22.0,
                                                backgroundImage: AssetImage(context.watch<DashBoardProvider>().userDetails[index].imagePath),
                                              ),
                                              const SizedBox(
                                                width: 8.0,
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    context.watch<DashBoardProvider>().userDetails[index].userName,
                                                    style: const TextStyle(
                                                      fontSize: 14.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    context.watch<DashBoardProvider>().userDetails[index].userDescription,
                                                    style: const TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Text(
                                                    context.watch<DashBoardProvider>().userDetails[index].time,
                                                    style: const TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.black,
                                                    ),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Container(
                                  height: MediaQuery.of(context).size.height * .60,
                                  margin: const EdgeInsets.only(top: 8.0, left: 8.0),
                                  color: Colors.white,
                                  child: Stack(
                                    children: [
                                      ListView.builder(
                                        controller: context.watch<DashBoardProvider>().scrollController,
                                        itemCount: context.watch<DashBoardProvider>().userChatDetails.length,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        reverse: true,
                                        physics: const ClampingScrollPhysics(),
                                        itemBuilder: (_, index) {
                                          var bottomPadding = 10.0;
                                          if(index == 0) {
                                            bottomPadding = 100;
                                          }
                                          return Column(
                                            crossAxisAlignment: context.watch<DashBoardProvider>().userChatDetails[index].isOwnMessage ?
                                            CrossAxisAlignment.end : CrossAxisAlignment.start,
                                            children: [
                                              if(context.watch<DashBoardProvider>().userChatDetails[index].userId ==
                                                  context.watch<DashBoardProvider>().userDetails[context.watch<DashBoardProvider>().userSelectedIndex].userId)
                                                _displaySeparatedDate(index: index, context: context),
                                              if(context.watch<DashBoardProvider>().userChatDetails[index].userId ==
                                                  context.watch<DashBoardProvider>().userDetails[context.watch<DashBoardProvider>().userSelectedIndex].userId)
                                              Container(
                                                margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: bottomPadding),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: context.watch<DashBoardProvider>().userChatDetails[index].isOwnMessage ?
                                                  const Color(0xFF55b0ab) : const Color(0xFFf2f2f1),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                                  child: Text(
                                                    context.watch<DashBoardProvider>().userChatDetails[index].message,
                                                    style: const TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 36,
                                          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color: Colors.black38,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 9,
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                  child: TextField(
                                                    controller: context.watch<DashBoardProvider>().chatEditingController,
                                                    textAlignVertical: TextAlignVertical.center,
                                                    decoration: const InputDecoration(
                                                      hintText: 'Write your message...',
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                               Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: [
                                                    const Icon(Icons.attachment_rounded),
                                                    const SizedBox(
                                                      width: 5.0,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        context.read<DashBoardProvider>().addMessageToChatList();
                                                      },
                                                      child: const CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundColor: Color(0xFF55b0ab),
                                                        child: Icon(
                                                          Icons.send_rounded,
                                                          color: Colors.white,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    else
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 40.0),
                          child: Text(
                            'Coming Soon',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _displaySeparatedDate({
    required final int index,
    required final BuildContext context,
  }) {
    final String currentIndexDate = context.watch<DashBoardProvider>().userChatDetails[index].time.toString().substring(0, 10);
    String nextIndexDate = '';
    if(index != context.watch<DashBoardProvider>().userChatDetails.length - 1) {
      nextIndexDate = (index + 1) > context.watch<DashBoardProvider>().userChatDetails.length
          ? '' : context.watch<DashBoardProvider>().userChatDetails[index + 1].time.toString().substring(0, 10);
    }
    if (currentIndexDate != nextIndexDate) {
      // Get current date and check what needs to be displayed
      final String displayDate = context.watch<DashBoardProvider>().userChatDetails[index].time.toString().substring(0, 10) ==
          DateTime.now().toString().substring(0, 10)
          ? 'Today'
          : DateFormat.yMMMMd().format(
        DateTime.parse(context.watch<DashBoardProvider>().userChatDetails[index].time.toString(),),
      );
      return Center(
        child: Text(
          displayDate,
          style: const TextStyle(
            color: Colors.black38,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
