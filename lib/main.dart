import 'package:flutter/material.dart';

import 'WhatsApphome.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
 Future <Null>main() async {
   WidgetsFlutterBinding.ensureInitialized();
   cameras= await availableCameras();
   runApp(MyApp());
 }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      home: WhatsApphome(cameras),
    );
  }
}