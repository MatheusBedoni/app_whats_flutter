import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DecorationConstants{


  static  BoxDecoration  decorationImgHero(String img){
    return BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill,
          image: CachedNetworkImageProvider(
              img)
      ),
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(2, 4), // Shadow position
        ),
      ],
    );
  }

  static final BoxDecoration decorationCircularGreen = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        offset: Offset(2, 4), // Shadow position
      ),
    ],
    borderRadius: BorderRadius.all(
        Radius.circular(10)
    ),
    color:Colors.green,
  );



}