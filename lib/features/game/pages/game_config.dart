import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:guexer/features/app/widgets/base_scaffold.dart';

@RoutePage()
class GameConfigPage extends StatelessWidget {
  const GameConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(child: Center(child: Text("Game Config Page")));
  }
}
