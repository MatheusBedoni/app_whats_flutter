import 'package:flutter/cupertino.dart';
import 'package:flutter_app/data/model/chat.dart';
import 'package:flutter_app/view/pages/homepage/s_home_page.dart';
import 'package:flutter_app/view/widgets/w_chat.dart';

class WChatsList extends StatelessWidget{
  List<Chat> list;


  WChatsList({this.list});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context, PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 100),
                  pageBuilder: (_, __, ___) => SHomePage()),
              );
            },
            child:WChat(chat: list[index],)
          )  ;
        },
      ),
    );
  }

}