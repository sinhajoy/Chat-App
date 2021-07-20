import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Screens/CameraScreen.dart';
import 'package:my_app/Screens/Homescreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "OpenSans",
          primaryColor: Color(0xFF17b3a9),
          accentColor: Color(0xFF128C7E)),
      home: Homescreen(),
    );
  }
}
