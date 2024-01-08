import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class ProgressBar extends StatefulWidget {
  final int percentage;
  final String title;
  final String description;
  final void Function() editData;
  const ProgressBar(
      {super.key,
      required this.percentage,
      required this.title,
      required this.description,
      required this.editData
      });

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: GestureDetector(
        onTap: widget.editData,
        child: Column(
          children: [
            Text(widget.title),
            Text(widget.description),
            SizedBox(
              height: 50,
              child: Column(children: [
                FAProgressBar(
                  currentValue: widget.percentage.toDouble(),
                  displayText: '%',
                  progressGradient: LinearGradient(colors: [
                    Colors.red.withOpacity(0.75),
                    Colors.orange.withOpacity(0.75),
                    Colors.green.withOpacity(0.75),
                  ]),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
