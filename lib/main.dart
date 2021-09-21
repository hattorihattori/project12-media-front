import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project12/setup_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); //Firebaseを使うときのおまじない
  await Firebase.initializeApp(); //Firebaseを使うときのおまじない
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mUItimedia',
      home: SetUpPage(), //アプリ起動時のページに移動
    );
  }
}
