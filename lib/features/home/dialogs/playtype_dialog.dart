import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guexer/shared/widgets/custom_button.dart';

class PlayTypeDialog extends StatelessWidget {
  const PlayTypeDialog({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "Single Player",
              onTap: () {
                // return response to ui
              },
            ),
            // ToggleSFXButton(animationController: animationController),
            CustomButton(
              text: "Tournament",
              onTap: 
              () {
              //   Navigator.push(
              //     context,
              //     PreviewPage.route(),
              //   );
              },
            ),],
        ),
      ),
    );
  }
}