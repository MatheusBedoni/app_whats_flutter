import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/view/styles/s_decorations.dart';

class WChat extends StatelessWidget{

  WChat();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left:10.0,right: 10),
    child:Column(
      children: [
        Row(
          children: <Widget>[
            Container(
              height:50,
              width: 50,
              margin: EdgeInsets.all(10.0),
              decoration:DecorationConstants.decorationImgHero('https://avatars.githubusercontent.com/u/16611877?v=4?s=400'),
            ),
            Container(
                width: MediaQuery.of(context).size.width/1.45,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text('Matheus',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Oi, como vai?',style: TextStyle(fontWeight: FontWeight.normal),),

                ],
              )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Text('19:45',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 10),),
                Container(height: 2,),
                Container(
                    width: 20,
                    height: 20,
                   decoration: DecorationConstants.decorationCircularGreen,
                    child:Center(
                      child:Text('1',style: TextStyle(color: Colors.white),)
                    ))

              ],
            )

          ],
        ),
        Row(
          children: [
            Container(
              width: 60,
            ),
            Container(
              color: Colors.grey.shade200,
              height: 1,
              width: MediaQuery.of(context).size.width/1.25,
            )
          ],
        )

      ],
    )
    );
  }


}