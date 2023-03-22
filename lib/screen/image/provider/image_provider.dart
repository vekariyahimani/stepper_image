import 'package:flutter/material.dart';
import 'package:stepper_image/screen/image/modal/image_modal.dart';

class ImgProvider extends ChangeNotifier {
  List<Modal> grid = [
    Modal(
      image: "assets/image/ellovira.jpg",
    ),
    Modal(
      image: "assets/image/goa.jpg",
    ),
    Modal(
      image: "assets/image/india.jpg",
    ),
    Modal(
      image: "assets/image/kutub.jpg",
    ),
    Modal(
      image: "assets/image/maha.jpg",
    ),

    Modal(image: "assets/image/maldivs.jpg"),
    Modal(image: "assets/image/chin.jpeg"),
    Modal(image: "assets/image/elfin.jpg"),
    Modal(image: "assets/image/taj.jpg")

  ];

  List<Modal> loctionname = [Modal(name: "The Ellora Caves,\nAutangabad"),
    Modal(name: "The Beaches of Goa"),
    Modal(name: "India Gate",),
    Modal(name: "Kutub Minar"),
    Modal(name: "Mahabodhi Temple,\nBodhgaya",),
    Modal(name: "The Maldives",),
    Modal(name: "The Chin Wall",),
    Modal(name: "The Great Elfin Taver",),
    Modal(name: "Taj Mahal",),


  ];
}
