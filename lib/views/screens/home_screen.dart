import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom QR Code Generator'),
        ),
        body: Center(
            child: QrImageView(
          data: 'This QR code has an embedded image as well',
          version: QrVersions.auto,
          size: 320,
          gapless: false,
          embeddedImage: AssetImage('assets/images/.png'),
          embeddedImageStyle: const QrEmbeddedImageStyle(
            size: Size(80, 80),
          ),
        )));
  }
}



//generate
//  QrImageView(
//           data:
//               'https://www.figma.com/design/lQgHcG1Lh2uivCzQ2nZf1Q/QR-Code-Scanner-App-(Community)?node-id=3-364&t=6OzZzjPwvKy6iXej-0',
//           version: QrVersions.auto,
//           size: 200.0,
//         ),