import 'package:flutter/material.dart';

class SelectDuration extends StatefulWidget {
  const SelectDuration({super.key});

  @override
  State<SelectDuration> createState() => _SelectDurationState();
}

class _SelectDurationState extends State<SelectDuration> {
  double _duration = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text("Duration", style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 8),
          Row(
            children: [
              Text('5 secs'),
              Expanded(
                child: Slider(
                  value: _duration,
                  min: 5,
                  max: 60,
                  divisions: 11, // (60-5)/5 steps
                  label: "${_duration.toInt()}s",
                  onChanged: (value) {
                    setState(() {
                      _duration = value;
                    });
                  },
                ),
              ),
              Text('60 secs'),
            ],
          ),
          Text(_duration.toString())
        ],
      ),
    );
  }
}
