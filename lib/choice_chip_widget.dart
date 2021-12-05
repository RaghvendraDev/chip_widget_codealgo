import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  List choice = ["google", "facebook", "twitter", "amazon"];
  int choiceIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      child: ListView.builder(
        itemCount: choice.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
            label: Text(
              choice[index],
              style: TextStyle(color: Colors.black),
            ),
            selected: choiceIndex == index,
            selectedColor: Colors.red,
            onSelected: (value) {
              setState(() {
                choiceIndex = value ? index : 0;
              });
            },
            backgroundColor: Colors.green,
          );
        },
      ),
    );
  }
}
