import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Container(
    //     child: Text(
    //       'About Page',
    //       style: TextStyle(fontSize: 30),
    //     ),
        
    //   ),
    // );

    return Scaffold(

      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Text(
              'About Page',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 50.0,
            ),
            Stack(
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 150,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                    backgroundColor: Color(0xFFFFFFFF),
                  ),

                ),
                Text('flunge')


              ],
            )


          ],
        )
      )
    );

  }
}


