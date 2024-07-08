import 'dart:math';

import 'package:assesment/screens/receiptpage.dart';
import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';

class RecentTransaction extends StatelessWidget {
  final RandomNames randomNames = RandomNames(Zone.india);
  final Random randomNumber = Random();
  RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Recent Transactions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return _transactionTile(context, index);
            },
          ),
        ],
      ),
    );
  }

  Widget _transactionTile(BuildContext context, int index) {
    // create a random number between 1 and 10
    bool inWard = randomNumber.nextInt(100) % 2 == 0;
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ReceiptPage(),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundColor: Colors.amber,
        radius: 25,
        child: Icon(!inWard
            ? Icons.arrow_upward_outlined
            : Icons.arrow_downward_outlined),
      ),
      title: Text(randomNames.fullName()),
      subtitle: Text(
          ' ${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}'),
      trailing: Text(
        "\$ ${randomNumber.nextInt(1000)}.000",
        style: TextStyle(
            color: inWard ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 14),
      ),
    );
  }
}
