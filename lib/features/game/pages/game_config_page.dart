import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guexer/core/routes.gr.dart';
import 'package:guexer/features/app/widgets/base_scaffold.dart';
import 'package:guexer/features/game/widgets/game_config_textfield.dart';
import 'package:guexer/features/game/widgets/select_duration.dart';
import 'package:guexer/features/game/widgets/select_guesses.dart';
import 'package:guexer/shared/widgets/custom_rect_button.dart';

@RoutePage()
class GameConfigPage extends StatelessWidget {
  const GameConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                "Game Setup",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            SelectDuration(),
            SizedBox(height: 16),
            SelectGuesses(),
            SizedBox(height: 16),
            GameConfigTextField(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomRectButton(
                text: 'Play',
                onTap: () {
                  context.router.push(GamePlayRoute());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
