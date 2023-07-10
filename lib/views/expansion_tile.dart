import 'package:dashboard/providers/dashboardProvider.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideExpansionTile extends StatelessWidget {
  const SideExpansionTile({
    required this.title,
    required this.leadingWidget,
    required this.subTitle,
    this.isInitialExpanded = false,
    final Key? key,
  }) : super(key: key);
  final String title;
  final Widget leadingWidget;
  final List<String> subTitle;
  final bool isInitialExpanded;

  @override
  Widget build(final BuildContext context) => ExpansionTileCard(
    key: ValueKey(title),
    contentPadding: const EdgeInsets.only(right: 4),
    elevation: 0,
    baseColor: Colors.transparent,
    expandedColor: Colors.transparent,
    leading: leadingWidget,
    trailing: _trailingIcon(),
    initiallyExpanded: isInitialExpanded,
    animateTrailing: true,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    children: subTitle.map((e) => Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () {
          context.read<DashBoardProvider>().selectSubMenuItem(selectedItem: e);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Container(
            decoration: context.watch<DashBoardProvider>().subMenuSelectedItem == e ? BoxDecoration(
              color: const Color(0xFF51667f),
              borderRadius: BorderRadius.circular(10),
            ) : null,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Text(
                e,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    ).toList(),
  );

  Widget _trailingIcon() => const Icon(
    Icons.keyboard_arrow_down_rounded,
    size: 20,
    color: Colors.white,
  );
}
