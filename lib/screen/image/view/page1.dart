import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:stepper_image/screen/image/provider/image_provider.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  ImgProvider? imgProvidertrue;
  ImgProvider? imgProviderfalse;

  @override
  Widget build(BuildContext context) {
    imgProviderfalse = Provider.of<ImgProvider>(context, listen: false);
    imgProvidertrue = Provider.of<ImgProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Staggered Recycler View",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              child: MasonryGridView.count(
            itemCount: imgProviderfalse!.loctionname.length,
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white, width: 4)),
                  child: Column(
                    children: [
                      Image.asset(
                          imgProvidertrue!.grid[index].image.toString()),
                      Row(
                        children: [
                          Text(imgProvidertrue!.loctionname[index].name
                              .toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    ));
  }
}
