import 'package:flutter/material.dart';
import 'package:nosu_para_1/components/app_bottom_bar.dart';
import 'package:nosu_para_1/components/app_category.dart';
import 'package:nosu_para_1/components/app_header.dart';
import 'package:nosu_para_1/components/app_mounts.dart';
import 'package:nosu_para_1/components/app_search.dart';

const Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage()));
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const MountsApp()));
    });
    return Container(
      color: mainColor,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(Icons.terrain, color: Colors.white, size: 90),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white)),
              ))
        ],
      ),
    );
  }
}

class MountsApp extends StatelessWidget {
  const MountsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: const Icon(Icons.terrain, color: mainColor, size: 40),
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: mainColor)),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          alignment: Alignment.bottomLeft,
          color: mainColor,
          child: const Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(),
          AppSearch(),
          Expanded(child: AppMounts()),
          AppCategory(),
          AppBottomBar(),
        ],
      ),
    );
  }
}
