import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin/widget/filter_carousel.dart';
import 'package:flutter_plugin/widget/takepicture_screen.dart';
import 'package:flutter_plugin/widget/filter_carousel.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MaterialApp(
    theme: ThemeData.dark(),
      home: TakepictureWidget(
        camera: firstCamera,
      ),
  ));

}
// void main() {
//   runApp(
//     const MaterialApp(
//       home: PhotoFilterCarousel(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }
