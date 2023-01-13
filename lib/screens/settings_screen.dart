
import 'package:app_ecommerce/screens/screens.dart';
import 'package:app_ecommerce/services/navbar_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';


class SettingsScreen extends StatelessWidget {
   
  const SettingsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final opcSelected = Provider.of<NavBarService>(context).optGet;
    switch (opcSelected) {
      case 0:
        return const ProductsScreen();
      case 1:
        return const ShopScreen();
      case 2: 
        return const ProfileScreen();
        
      default:
      return const ProductsScreen();

    }
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        selectedIndex: context.read<NavBarService>().optGet ,
        onTabChange: (value) => context.read<NavBarService>().opcSet = value,
        gap: 10,
        activeColor: Colors.white,
        tabMargin:const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
        color: Colors.black,
        tabBackgroundColor: Colors.black,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        padding:const EdgeInsets.only(bottom: 12, top: 12, right: 15, left: 15 ),
        textStyle:const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          
        ),
        tabs:const [
          GButton(
            icon: FontAwesomeIcons.house,
            text: 'Inicio',
            iconSize: 16,
            
            ),
          GButton(
            icon: FontAwesomeIcons.shop,
            text: 'Tienda', 
            iconSize: 16,
            
            ),
          GButton(
            icon: FontAwesomeIcons.user,
            text: 'Perfil',
            iconSize: 16,
            
            ),
        ]),

    );
  }
}
