import 'package:app_ecommerce/components/products_components/drawer_avatar_component.dart';
import 'package:app_ecommerce/components/products_components/search_filter_component.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
   
  const ProductsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: Column(
          children:const [
            SizedBox(height:10 ,),
            DrawerAvatar(),
            SizedBox(height: 30,),
            SearchFilter()

          ],
        ),
      )
    );
  }
}