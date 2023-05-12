import 'package:costem_gridview/view/gallery_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  CGalleryProvider? gpF;
  CGalleryProvider? gpT;
  @override
  Widget build(BuildContext context) {
    gpF=Provider.of<CGalleryProvider>(context,listen: false);
    gpT=Provider.of<CGalleryProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      body: MasonryGridView.builder(
          itemCount: gpF!.imgList.length,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("${gpF!.imgList[index].img}"),
                    ),
                    Text("${gpT!.imgList[index].name}",
                      style: TextStyle(color: Colors.amber.shade900),
                    ),
                    SizedBox(height: 5)
                  ],
                ),
              ),
            ) ;
          }, )
    ));
  }
}
