import 'package:flutter/material.dart';
import 'package:nosu_para_1/models/mount_model.dart';

class AppMounts extends StatelessWidget {
  const AppMounts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mountItems.length,
            itemBuilder: (context, index) {
              MountModel currentMount = mountItems[index];
              return Container(
                alignment: Alignment.bottomLeft,
                width: 150,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(currentMount.path),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(currentMount.name,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text(currentMount.location,
                        style: const TextStyle(color: Colors.white))
                  ],
                ),
              );
            }));
  }
}
