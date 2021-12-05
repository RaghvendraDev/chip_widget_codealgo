import 'package:flutter/material.dart';

class InputChipWidget extends StatefulWidget {
  const InputChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<InputChipWidget> createState() => _InputChipWidgetState();
}

class _InputChipWidgetState extends State<InputChipWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Text(
        "Input Chip",
        style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
      ),
      avatar: CircleAvatar(
        backgroundColor: Colors.purple,
        child: Text("CA"),
      ),
      selected: isSelected,
      selectedColor: Colors.blue,
      onSelected: (selected) {
        setState(() {
          isSelected = selected;
        });
      },
    );
  }
}
