

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DrawerAvatar extends StatelessWidget {
  const DrawerAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle
            ),
            child: Material(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () => print(''),
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child:const FaIcon(FontAwesomeIcons.list, color: Colors.white,size: 16, ),
                ),
              ),
            ),
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: FaIcon(FontAwesomeIcons.userAstronaut, color: Colors.white,),
          )
        ],
      ),
    );
  }
}