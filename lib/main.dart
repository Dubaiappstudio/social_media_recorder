import 'package:flutter/material.dart';
import 'package:social_media_recorder/screen/social_media_recorder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 140, left: 4, right: 4),
          child: Align(
            alignment: Alignment.centerRight,
            child: SocialMediaRecorder(
              disable: false,
              width: MediaQuery.of(context).size.width * 0.95,
              initRecordPackageWidth: 46,
              slideToCancelText: 'Slide to cancel >',
              cancelText: 'Cancel',
              lockButton: const Padding(
                padding: EdgeInsets.only(left: 2, right: 2),
                child: Column(
                  children: [
                    Icon(Icons.lock),
                    Icon(
                      Icons.keyboard_double_arrow_up_sharp,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              sendButtonIcon: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(Icons.mic),
              ),
              recordIcon: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(Icons.mic),
              ),
              recordIconBackGroundColor: Colors.transparent,
              backGroundColor: Colors.transparent,
              slideToCancelTextStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
              cancelTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              counterTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              counterBackGroundColor: Colors.transparent,
              cancelTextBackGroundColor: Colors.transparent,
              recordIconWhenLockBackGroundColor: Colors.red,
              fullRecordPackageHeight: 40,
              startRecording: () {},
              stopRecording: (v) {},
              sendRequestFunction: (String soundFile, String time) {},
            ),
          ),
        ),
      ),
    );
  }
}
