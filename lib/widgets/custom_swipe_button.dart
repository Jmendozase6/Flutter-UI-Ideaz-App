import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class CustomSwipeButton extends StatefulWidget {
  const CustomSwipeButton({super.key});

  @override
  State<CustomSwipeButton> createState() => _CustomSwipeButtonState();
}

class _CustomSwipeButtonState extends State<CustomSwipeButton> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwipeableButtonView(
        buttonText: 'Swipe to add Idea',
        buttonWidget: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey,
        ),
        activeColor: const Color(0XFF33AA9E),
        onWaitingProcess: () {
          Future.delayed(const Duration(seconds: 2), () {
            if (mounted) {
              setState(() {
                isFinished = true;
              });
            }
          });
        },
        onFinish: () {},
      ),
    );
  }
}
