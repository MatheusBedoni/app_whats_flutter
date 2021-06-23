
import 'package:flutter/material.dart';
import 'package:flutter_app/view/styles/s_colors.dart';
import 'package:flutter_app/view/styles/s_text.dart';
import 'package:flutter_app/view/widgets/w_chamadas_list.dart';
import 'package:flutter_app/view/widgets/w_chats_list.dart';
import 'package:flutter_app/view/widgets/w_status_list.dart';

class SHomePage extends StatefulWidget {
  SHomePage({Key key,}) : super(key: key);



  @override
  _SHomePageState createState() => _SHomePageState();
}

class _SHomePageState extends State<SHomePage> with SingleTickerProviderStateMixin{

  TabController tabController;

  int cont = 0;


  @override
  void initState() {
    tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }


  increment(){

  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Whatts'),
        centerTitle: false,
        actions: [
          Icon(Icons.search),
          Container(width: 10,),
          Icon(Icons.more_vert),
          Container(width: 10,)
        ],
        backgroundColor: SColors.whatsAppGreen,
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon:Icon(Icons.camera_alt)
            ),
            Tab(
                child:Text('CHAT',style:SText.styleAppBar(context),)
            ),
            Tab(
                child:Text('STATUS',style:SText.styleAppBar(context),)
            ),
            Tab(
              child:Text('CHAMADAS',style: SText.styleAppBar(context),)
            )
          ],
        ),
      ),
      body: TabBarView(
        controller:tabController ,
        children:<Widget> [
          Icon(Icons.camera_alt),
          WChatsList(),
          WStatusList(),
          WChamadasList()
        ],
      )
    );
  }
}