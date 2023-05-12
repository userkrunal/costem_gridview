import 'package:flutter/widgets.dart';

class CGalleryProvider extends ChangeNotifier
{
  List imgList=[
    GalleryModel(name: "flawo",img: "assets/images/img.png"),
    GalleryModel(name: "Statue of unity",img: "assets/images/img_1.png"),
    GalleryModel(name: "Taj mahal",img: "assets/images/img_2.png"),
    GalleryModel(name: "Mountain",img: "assets/images/img_3.png"),
    GalleryModel(name: "Lion",img: "assets/images/img_4.png"),
    GalleryModel(name: "Moon",img: "assets/images/img_5.png"),
    GalleryModel(name: "Horse",img: "assets/images/img_6.png"),
  ];
}

class GalleryModel
{
  String? name,img;

  GalleryModel({this.name, this.img});
}