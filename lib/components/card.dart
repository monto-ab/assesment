import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  static const color = Colors.white;

  getTextStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Card(
        color: Colors.amber.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              transform: const GradientRotation(270),
              colors: [
                Colors.purple.shade900,
                const Color.fromARGB(255, 223, 138, 246),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Balance',
                  style: getTextStyle(15),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text('Rp 25.000.000', style: getTextStyle(24)),
                    const SizedBox(width: 10),
                    const Icon(Icons.remove_red_eye_outlined, color: color),
                    const Spacer(),
                    const Icon(Icons.credit_card, color: color),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 20),
                  child: Text('**** **** **** 1234', style: getTextStyle(25)),
                ),
                Row(
                  children: [
                    Text("Master Card", style: getTextStyle(15)),
                    const Spacer(),
                    Text("12/24", style: getTextStyle(15)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
