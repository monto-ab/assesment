import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({super.key});

  Widget topData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // circular avatar
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey.shade300,
          child: const Icon(
            Icons.person,
            size: 50,
          ),
        ),
        // amount 2500.000
        const Text(
          "Rp2500.000",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        //name
        const Text(
          "John Doe",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        // number
        const Text(
          "+62 812 3456 7890",
        ),
        // note
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          padding: const EdgeInsets.all(8),
          child: const Text(
            "Payment for order #123456",
          ),
        ),
      ],
    );
  }

  Widget dottedLine() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: DottedLine(
        direction: Axis.horizontal,
        lineThickness: 1,
      ),
    );
  }

  Widget data(String label, String value,
      {Color? valueColor, bool? showCopy, bool? labelBold}) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity.compact,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      tileColor: showCopy == true ? Colors.blueAccent.shade100 : null,
      title: Text(
        label,
        style: TextStyle(
            fontSize: 17,
            fontWeight:
                labelBold == true ? FontWeight.bold : FontWeight.normal),
      ),
      trailing: Text(
        value,
        style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: valueColor ?? Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leadingWidth: 75,
        backgroundColor: Colors.transparent,
        title: const Text('Receipt'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      topData(),
                      dottedLine(),
                      data("Status", "Success", valueColor: Colors.green),
                      data("Date", "18 July 2023"),
                      data("Time", "09:41 AM"),
                      data("Tranaction ID", "CGX-1097564", showCopy: true),
                      data("Tax", "Rp6.500"),
                      dottedLine(),
                      data("Total", "Rp2506.500", labelBold: true),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () async {
                    //  await Share.share("text");
                  },
                  // child: Text("Share Receipt"),\
                  icon: const Icon(CupertinoIcons.share),
                  label: const Text("Share Receipt"),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
