import 'package:flutter/material.dart';
import 'package:nosu_para_1/main.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            ClipOval(
              child: Image.network(
                  'https://avatars.githubusercontent.com/u/5081804?v=4', // replace if you want
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover),
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              children: [
                Text('Hello, Roman',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('Good morning',
                    style: TextStyle(color: mainColor, fontSize: 12))
              ],
            )
          ],
        ));
  }
}
