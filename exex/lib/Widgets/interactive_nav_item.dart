import 'package:exex/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class InteractiveNavItem extends MouseRegion {

static final appContainer = html.window.document.querySelectorAll('flt-glass-pane')[0];

InteractiveNavItem({Widget child, String text, String routeName, bool selected})
      : super(
        
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
        
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
        
          child: InteractiveText(
            text: text,
            routeName: routeHome,
            selected: selected,
          ),
        );
}





class InteractiveText extends StatefulWidget{

  final String text;
  final String routeName;
  final bool selected;

  const InteractiveText({
    @required this.text,
    this.routeName,
    this.selected,
  });

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText>{

  bool _hovering = false;

  final TextStyle pageTitleStyle = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_)=> _hovered(true),
      onExit: (_)=> _hovered(false),
      child: Text(
        widget.text,
        style: _hovering
            ? pageTitleStyle.copyWith(
                color: Colors.indigo,
                decoration: TextDecoration.underline)
            : (widget.selected)
              ?pageTitleStyle.copyWith(color:Colors.red)
              :pageTitleStyle,
      ),

    );
  }

  _hovered(bool hovered){
    setState(() {
      _hovering = hovered;
    });
  }


}