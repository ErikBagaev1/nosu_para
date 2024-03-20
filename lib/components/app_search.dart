import 'package:flutter/material.dart';
import 'package:nosu_para_1/main.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Text('search', style: TextStyle(color: Colors.grey))
                      ]))),
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.tune, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
