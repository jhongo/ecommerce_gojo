import 'package:app_ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
   
  const MainScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsScreen(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}