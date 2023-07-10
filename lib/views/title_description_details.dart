import 'package:flutter/material.dart';

class TitleDescriptionDetails extends StatelessWidget {
  final String title;
  final String description;
  final EdgeInsetsGeometry? startPadding;

  const TitleDescriptionDetails({
    required this.title,
    required this.description,
    this.startPadding = const EdgeInsets.only(top: 20.0),
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: startPadding!,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF29376b),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
