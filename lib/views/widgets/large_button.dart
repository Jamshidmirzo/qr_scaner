import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String title;
  const LargeButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 320,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
            const Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}
