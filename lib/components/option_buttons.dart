import 'package:assesment/components/circular_icon_button_with_label.dart';
import 'package:flutter/material.dart';

class OptionButtons extends StatelessWidget {
  const OptionButtons({super.key});

  onButtonPress() {
    print('Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // IconButton.filled(
          //   onPressed: () {},
          //   icon: const Icon(Icons.account_balance_wallet_rounded),
          // ),
          // const Spacer(),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Text('Top Up'),
          // ),

          CircularIconButtonWithLabel(
              onButtonPressed: onButtonPress,
              icon: Icons.account_balance_wallet_rounded,
              iconLabel: 'Top Up'),
          CircularIconButtonWithLabel(
            onButtonPressed: onButtonPress,
            iconLabel: "Send",
            icon: Icons.arrow_upward_outlined,
          ),
          CircularIconButtonWithLabel(
            onButtonPressed: onButtonPress,
            iconLabel: "Request",
            icon: Icons.arrow_downward_outlined,
          ),
          CircularIconButtonWithLabel(
              onButtonPressed: onButtonPress,
              iconLabel: "More",
              icon: Icons.more_horiz_rounded),
        ],
      ),
    );
  }
}
