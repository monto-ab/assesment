import 'package:flutter/material.dart';

class QuickTransferTile extends StatelessWidget {
  const QuickTransferTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Quick Transfer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 75,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Widget child;
                if (index == 0) {
                  child = const Icon(Icons.add, color: Colors.amber);
                } else {
                  child = Text(
                    "$index",
                    style: const TextStyle(fontSize: 20),
                  );
                }
                return CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 50,
                  child: child,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 0),
            ),
          ),
        ],
      ),
    );
  }
}
