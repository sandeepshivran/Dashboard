import 'package:dashboard/providers/dashboardProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideTile extends StatelessWidget {
  final String title;
  final Icon icon;
  const SideTile({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: context.watch<DashBoardProvider>().menuSelectedItem == title ? BoxDecoration(
        color: const Color(0xFF55b0ab),
        borderRadius: BorderRadius.circular(10),
      ) : null,
      child: GestureDetector(
        onTap: () {
          context.read<DashBoardProvider>().selectMenuItem(selectedItem: title);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 12.0,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
