import 'package:assesment/components/card.dart';
import 'package:assesment/components/option_buttons.dart';
import 'package:assesment/components/quick_transfer_tile.dart';
import 'package:assesment/components/recent_transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          //  Card
          const MyCard(),
          const SizedBox(height: 20),
          //  Option Buttons
          const OptionButtons(),
          const SizedBox(height: 20),

          const QuickTransferTile(),
          const SizedBox(height: 20),
          RecentTransaction()
          //  Transaction History
        ],
      ),
    );
  }
}
