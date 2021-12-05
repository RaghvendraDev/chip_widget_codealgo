import 'package:flutter/material.dart';

class ActionChipWidget extends StatelessWidget {
  const ActionChipWidget({
    Key? key,
    required this.actionchipLabel,
  }) : super(key: key);

  final String actionchipLabel;
  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(actionchipLabel),
      backgroundColor: Colors.purple,
      avatar: CircleAvatar(
        backgroundColor: Colors.red,
        child: Icon(Icons.comment),
      ),
      onPressed: () {
        final snackBar = SnackBar(content: Text('Action chip'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
