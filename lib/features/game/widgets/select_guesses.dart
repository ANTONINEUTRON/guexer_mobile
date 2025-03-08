import 'package:flutter/material.dart';

class SelectGuesses extends StatefulWidget {
  const SelectGuesses({super.key});

  @override
  State<SelectGuesses> createState() => _SelectGuessesState();
}

class _SelectGuessesState extends State<SelectGuesses> {
  int _guesses = 3;

  void _increment() {
    if (_guesses < 10) {
      setState(() => _guesses++);
    }
  }

  void _decrement() {
    if (_guesses > 1) {
      setState(() => _guesses--);
    }
  }

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
          Text(
            'Number of Guesses',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _decrement,
                icon: Icon(Icons.remove_circle_outline),
              ),
              SizedBox(width: 16),
              Text(
                _guesses.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(width: 16),
              IconButton(
                onPressed: _increment,
                icon: Icon(Icons.add_circle_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
