import 'package:chang_mini/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // initState에서 대기를 걸어 줄 때 사용하는 로직.
      await Future.delayed(const Duration(seconds: 2)); // 2초 대기.

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()), // HomePage로 이동.
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/toss_bank.png'),
      ),
    );
  }
}
