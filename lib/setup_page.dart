import 'package:flutter/material.dart';
import 'package:project12/login/database/add_login_page.dart';

class SetUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent, //背景の色
        child: Center(
          child: Column( //Columnは縦に枠組を作りたいときに利用
            mainAxisAlignment: MainAxisAlignment.center, //テキストなどを中央寄せする
            children: [
              Image.asset('images/setup.PNG'), //ローカルから画像を取得
              SizedBox( //余白を空ける、以下同様
                height: 8,
              ),
              Text('Loading...'),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                child: Text('次へ'),
                onPressed: () {
                  // ここにボタンを押した時に呼ばれるコードを書く
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddLoginPage()), //ログイン(アンケート)ページに遷移する
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
