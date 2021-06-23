


import 'package:flutter_app/data/model/chat.dart';

class CHome_Page{
  List<Chat> list;

  CHome_Page({this.list});


  getListChat(){
    Chat chat1 = new Chat(contato: 'Matheus', msg: 'E ai', data: '19:00h', status: 1,tipo: 1,qtd: 1 ,foto: 'https://avatars.githubusercontent.com/u/16611877?v=4?s=400');

    list.add(chat1);

    Chat chat2 = new Chat(contato: 'Erico', msg: 'Oi', data: '21:00h', status: 1,tipo: 1,qtd: 1 ,foto:'https://ebvadmin.com.br/public/images/noti-1531890993.jpg');

    list.add(chat2);

  }

}