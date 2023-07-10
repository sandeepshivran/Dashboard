import 'package:dashboard/constants/consts.dart';
import 'package:dashboard/providers/dashboardProvider.dart';
import 'package:dashboard/views/custom_app_bar.dart';
import 'package:dashboard/views/project_details.dart';
import 'package:dashboard/views/side_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'expansion_tile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(),
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF2a3b4e),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                    child: Column(
                      children: [
                        const SideTile(
                          icon: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                          title: 'Home',
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const SideExpansionTile(
                          title: 'RDMS',
                          leadingWidget: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          subTitle: [],
                        ),
                        SideExpansionTile(
                          title: 'Async',
                          leadingWidget: const Icon(
                            Icons.calendar_month_rounded,
                            color: Colors.white,
                          ),
                          isInitialExpanded: context.watch<DashBoardProvider>().subMenuSelectedItem == 'Projects',
                          subTitle: Consts().menuTabs,
                        ),
                        const SideExpansionTile(
                          title: 'Hub',
                          leadingWidget: Icon(
                            Icons.calendar_month_rounded,
                            color: Colors.white,
                          ),
                          subTitle: [],
                        ),
                        const SideExpansionTile(
                          title: 'KMS',
                          leadingWidget: Icon(
                            Icons.cases_outlined,
                            color: Colors.white,
                          ),
                          subTitle: [],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const SideTile(
                          icon: Icon(
                            Icons.live_tv_sharp,
                            color: Colors.white,
                          ),
                          title: 'Live Session',
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            height: 10.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xFF55b0ab),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const SideTile(
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          title: 'Profiles',
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const SideTile(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          title: 'Settings',
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const SideTile(
                          icon: Icon(
                            Icons.integration_instructions,
                            color: Colors.white,
                          ),
                          title: 'Integrations',
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const SideTile(
                          icon: Icon(
                            Icons.pan_tool_sharp,
                            color: Colors.white,
                          ),
                          title: 'Tools',
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const SideTile(
                          icon: Icon(
                            Icons.adf_scanner_rounded,
                            color: Colors.white,
                          ),
                          title: 'RD Status',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:  60.0, bottom: 25.0),
                          child: Container(
                            height: .5,
                            color: Colors.blueGrey,
                          ),
                        ),
                        const Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: AssetImage('assets/user_avatar.jpeg'),
                                ),
                              ),
                            ),
                            Text(
                                'Jane Smith',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
              flex: 8,
              child: (context.watch<DashBoardProvider>().menuSelectedItem == 'Async' &&
                  context.watch<DashBoardProvider>().subMenuSelectedItem == 'Projects') ?
              const ProjectDetails() :
              Container(
                height: double.infinity,
                color: const Color(0xFFf2f2f1),
                child: const Center(child: Text('Coming Soon')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
