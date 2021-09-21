import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project12/login/database/add_login_model.dart';
import 'package:project12/home_page.dart';
import 'package:provider/provider.dart';

//ユーザーにアンケートを記入してもらうページ
class AddLoginPage extends StatelessWidget {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('users').snapshots();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddLoginModel>(
      create: (_) => AddLoginModel(),
      child: Scaffold(
        body: Center(
          child: Consumer<AddLoginModel>(builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text('新聞に関するアンケートにご協力ください。'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '性別',
                    ),
                    //ここで記入されたデータを一時的に格納する。以下同様。
                    onChanged: (text) {
                      model.gender = text;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '年齢',
                    ),
                    onChanged: (text) {
                      model.age = text;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'あなたは普段新聞を読みますか？',
                    ),
                    onChanged: (text) {
                      model.q_1 = text;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'あなたの好きなあるいはよく使うメディアは何ですか？',
                    ),
                    onChanged: (text) {
                      model.q_2 = text;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        await model.addLogin();
                        //この辺は今は無視で
                        Navigator.of(context).pop(true);
                        final snackBar = SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('ご記入ありがとうございます。'),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()), //ボタンを押すとホーム画面に遷移
                        );
                      } catch (e) {
                        final snackBar = SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(e.toString()),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text('決定'),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
