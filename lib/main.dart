import 'package:costem_gridview/view/gallery_provider.dart';
import 'package:costem_gridview/view/sgallery_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => CGalleryProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => GalleryScreen(),
        },
      ),
    )
  );
}