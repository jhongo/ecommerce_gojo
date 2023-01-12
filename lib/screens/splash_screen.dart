import 'package:animate_do/animate_do.dart';
import 'package:app_ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
   
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Future<void> _waitSplashScreen() async{

    await Future.delayed(const Duration(seconds: 3));

    if (mounted) {
      Navigator.of(context).pushReplacement( 
        MaterialPageRoute(builder:(_) => const MainScreen()
        
        ));
    }
  }

  @override
  void initState() {
    _waitSplashScreen();
    super.initState();
  }

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LottieBuilder.asset('assets/loading/loading.json')
        
        )
    );
  }
}