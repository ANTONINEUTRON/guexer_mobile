import 'package:flutter/material.dart';
import 'package:guexer/features/app/widgets/base_scaffold.dart';
import 'package:guexer/features/gameplay/dialogs/pause_dialog.dart';
import 'package:guexer/features/home/dialogs/playtype_dialog.dart';
import 'package:guexer/shared/widgets/custom_button.dart';
import 'package:guexer/shared/widgets/user_profile_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Stack(
        fit: StackFit.expand,
        children: [
          //
          // Top left volume button
          Positioned(
            top: 24,
            left: 16,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                spacing: 8,
                children: [
                  Icon(Icons.token, color: Colors.black, size: 32),
                  Text("20 GEX"),
                ],
              ),
            ),
          ),
          //
          // Top right volume button
          Positioned(top: 24, right: 16, child: const UserProfileButton()),
          //
          // Main Navigation Buttons
          Positioned(
            bottom: 170,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CustomButton(text: "PLAY", onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return PlayTypeDialog();
                      },
                    );
                  },
                ),
                CustomButton(
                  text: "LEADERBOARD",
                  onTap: null,
                ),
                CustomButton(
                  text: "HELP",
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   PreviewPage.route(),
                    // );
                  },
                ),
              ],
            ),
          ),
          //
          // loading section
        ],
      ),
    );
  }
}
