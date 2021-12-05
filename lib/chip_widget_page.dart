import 'package:chip_widget_codealgo/action_chip_widget.dart';
import 'package:chip_widget_codealgo/choice_chip_widget.dart';
import 'package:chip_widget_codealgo/filter_chip_widget.dart';
import 'package:chip_widget_codealgo/input_chip_widget.dart';
import 'package:flutter/material.dart';

import 'package:chip_widget_codealgo/basic_chip_widget.dart';

class ChipWidgetPage extends StatefulWidget {
  const ChipWidgetPage({Key? key}) : super(key: key);

  @override
  State<ChipWidgetPage> createState() => _ChipWidgetPageState();
}

class _ChipWidgetPageState extends State<ChipWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip Widget"),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Basic Chip Widget"),
              Wrap(
                spacing: 7,
                children: const [
                  // Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  BasicChipWidget(
                    basicChipLabel: "first",
                    chipColor: Colors.purple,
                  ),
                  BasicChipWidget(
                    basicChipLabel: "second",
                    chipColor: Colors.blue,
                  ),
                  BasicChipWidget(
                    basicChipLabel: "third",
                    chipColor: Colors.orange,
                  ),
                  BasicChipWidget(
                    basicChipLabel: "fourth",
                    chipColor: Colors.green,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Action Chip Widget"),
              const ActionChipWidget(
                actionchipLabel: "First Action chip",
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Input Chip Widget"),
              InputChipWidget(),
              const SizedBox(
                height: 10,
              ),
              const Text("Choice Chip Widget"),
              ChoiceChipWidget(),
              const Text("Filter Chip Widget"),
              FilterChipWidget()
            ],
          ),
        ),
      ),
    );
  }
}
