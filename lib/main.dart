import 'package:flutter/material.dart';
import 'package:project12/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/setup.PNG'),
                SizedBox(
                  height: 8,
                ),
                Text('Loading...'),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  child: Text('次へ'),
                  onPressed: ()  {
                    // ここにボタンを押した時に呼ばれるコードを書く
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage('Demo')),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
