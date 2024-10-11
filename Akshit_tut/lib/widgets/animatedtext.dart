import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 8,
        title: const Text("Animated Text Widget"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // AnimatedTextKit(
          //   animatedTexts: [
          //     TypewriterAnimatedText('Akshit Madan',
          //         textStyle:
          //             TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //         speed: Duration(milliseconds: 400))
          //   ],
          //   totalRepeatCount: 4,
          //   pause: Duration(milliseconds: 200),
          //   displayFullTextOnTap: true,
          //   stopPauseOnTap: true,
          // ),
          // AnimatedTextKit(
          //   animatedTexts: [
          //     RotateAnimatedText(
          //       'HELLO',
          //       textStyle: TextStyle(
          //           fontSize: 30,
          //           fontWeight: FontWeight.w600,
          //           color: Colors.red),
          //     ),
          //     RotateAnimatedText(
          //       'BEAUTIFUL',
          //       textStyle: TextStyle(
          //           fontSize: 30,
          //           fontWeight: FontWeight.w600,
          //           color: Colors.red),
          //     ),
          //     RotateAnimatedText(
          //       'WORLD',
          //       textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //     ),
          //   ],
          //   // totalRepeatCount: 4,
          //   // pause: Duration(milliseconds: 200),
          //   // displayFullTextOnTap: true,
          //   // stopPauseOnTap: true,
          // ),
          AnimatedTextKit(animatedTexts: [
            WavyAnimatedText(
              'HELLO WORLD',
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            WavyAnimatedText(
              'HELLO WORLD',
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ])
        ]
    ),
      ),
    );
  }
}
