import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_image/screen/image/provider/image_provider.dart';
import 'package:stepper_image/screen/image/view/page1.dart';

void main()
{
  runApp(
   MultiProvider(
     providers: [

       ChangeNotifierProvider(create: (context) => ImgProvider(),),
     ],
     child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => Page1(),
          },
        ),
   ),

  );
}