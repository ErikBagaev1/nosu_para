import 'package:flutter/material.dart';
import 'package:nosu_para_1/main.dart';
import 'package:nosu_para_1/models/category_model.dart';

class AppCategory extends StatelessWidget {
  const AppCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text('See More',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ])),
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  CategoryModel currentCategory = categories[index];
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(top: 10, right: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.2), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(currentCategory.icon, color: mainColor),
                        Text(currentCategory.category)
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
