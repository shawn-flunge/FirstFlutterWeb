

import 'package:exex/routes/routes.dart';
import 'package:flutter/cupertino.dart';

class NavigationItem extends StatelessWidget{

  final String title;
  final String routeName;
  
  const NavigationItem({
    @required this.title,
    @required this.routeName
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap : () =>{
        navKey.currentState.pushNamed(routeName)
      },
      child: Padding(
        padding : const EdgeInsets.symmetric(horizontal: 50),
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
       )
      )
    );
  }

}