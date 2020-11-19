



import 'package:exex/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'navigation_item.dart';


class NavigationBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          NavigationItem(
            title: "home",
            routeName : routeHome
          ),
          NavigationItem(
            title: "About",
            routeName: routeAbout
          ),
        ],
      )
    );
  }
}







