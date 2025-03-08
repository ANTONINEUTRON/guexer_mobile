import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:guexer/features/app/widgets/base_scaffold.dart';
import 'package:guexer/shared/widgets/custom_icon_button.dart';

@RoutePage()
class GamePlayPage extends StatelessWidget {
  const GamePlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        children: [
          // Top Row consisting timer and pause button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              //Timer
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      '00:00',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              //
              //
              // Pause button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: CustomIconButton(
                  onPressed: () {
                    // showPauseDialog(context);
                  },
                  icon: const Icon(Icons.pause_circle_filled_outlined),
                ),
              ),
            ],
          ),
          // 1. Hints Section
          Container(
            height: 170,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.surfaceVariant.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AI Hints',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text('Hint ${index + 1}'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // 2. Word Display Section
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'HIDDEN WORD',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    letterSpacing: 8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // 3. Guess Input Section
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your guess...',
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.surface,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.mic_rounded),
                          onPressed: () {
                            // Handle voice input
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.send_rounded,color: Theme.of(context).primaryColor,),
                          onPressed: () {
                            // Handle send
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
