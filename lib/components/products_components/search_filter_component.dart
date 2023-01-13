import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Row(
        children: [
          ClipRRect(
            child: Container(
              width: 300,
              height: 45,
              child: TextField(
                
                decoration: InputDecoration(
                  prefixIcon:const Padding(
                    padding: EdgeInsets.only(top: 10, left: 15),
                     child: FaIcon(FontAwesomeIcons.magnifyingGlass)),
                  enabledBorder: OutlineInputBorder(
                    borderSide:const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(50)
                  ), 
                ),
                onChanged: (value) {
                  
                },
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: 40,
            height:40,
            alignment: Alignment.center,
            decoration:  BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)
            ),
            child: Material(
              color: Colors.black,
               borderRadius: BorderRadius.circular(10),
              child: InkWell(
                 borderRadius: BorderRadius.circular(10),
                onTap: () => print(''),
                child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  child:const FaIcon(FontAwesomeIcons.filter, color: Colors.white, size: 20,),
                ),
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}