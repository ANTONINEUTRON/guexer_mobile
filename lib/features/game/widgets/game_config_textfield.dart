import 'package:flutter/material.dart';

class GameConfigTextField extends StatefulWidget {
  const GameConfigTextField({super.key});

  @override
  State<GameConfigTextField> createState() => _GameConfigTextFieldState();
}

class _GameConfigTextFieldState extends State<GameConfigTextField> {
  late FocusNode _focusNode;
  late TextEditingController _themeController;
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _themeController = TextEditingController();
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _themeController.dispose();
    super.dispose();
  }

  String? _validateTheme(String? value) {
    if (value == null || value.isEmpty) return null;

    final wordCount =
        value.trim().split(' ').where((word) => word.isNotEmpty).length;
    return wordCount > 2 ? 'Theme should not be more than 2 words' : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _themeController,
            focusNode: _focusNode,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Theme',
              hintText: 'Enter a word or phrase',
              errorText: _errorText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onChanged: (value) {
              setState(() {
                _errorText = _validateTheme(value);
              });
            },
          ),
          Text(
            "Enter a theme (e.g, Football, Music, Movie, Historical Events etc.)",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
