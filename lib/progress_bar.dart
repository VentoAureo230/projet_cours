import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class ProgressBar extends StatefulWidget {
  final int percentage;
  final String title;
  final String description;
  const ProgressBar({super.key, required this.percentage, required this.title, required this.description});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          
          children: [
            Text(widget.title),
            const SizedBox(height: 10,),
            Text(widget.description),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
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
            ),
          ],
        ),
      ],
    );
  }
}
