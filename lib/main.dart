import 'package:emoji_alert/emoji_alert.dart';
import 'package:emoji_alert/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emoji Alert'),
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  EmojiAlert(
                    emojiType: EMOJI_TYPE.WINK,
                    emojiSize: 100,
                    height: 250,
                    cancelable: true,
                    // enableMainButton: true,
                    // mainButtonText: Text('Keep Out'),
                    // mainButtonColor: Colors.red,
                    onMainButtonPressed: () {
                      Navigator.pop(context);
                    },
                    background: Colors.black54,
                    description: Column(
                      children: [
                        Text(
                          'This is Description',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'This is another text',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'Hello Everyone',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ).displayAlert(context);
                },
                child: const Text(
                  'Alert',
                  style: TextStyle(fontSize: 30),
                ),
                style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(const Size(100, 50))),
              )
            ],
          )),
    );
  }
}
