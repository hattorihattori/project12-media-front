import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//Firestore(データベース)にデータを代入するためのクラス
class AddLoginModel extends ChangeNotifier {
  String? gender; //性別
  String? age; //年齢
  String? q_1; //あなたは普段新聞を読みますか？
  String? q_2; //あなたの好きなあるいはよく使うメディアは何ですか?

  Future addLogin() async {

    //中身が入っているかのチェック
    if (gender == null || gender == "") {
      throw 'genderが入力されていません';
    }
    if (age == null || age == "") {
      throw 'ageが入力されていません';
    }
    if (q_1 == null || q_1 == "") {
      throw 'q_1が入力されていません';
    }
    if (q_2 == null || q_2 == "") {
      throw 'q_2が入力されていません';
    }

    //firestoreに追加
    await FirebaseFirestore.instance.collection('login').add({
      'gender':gender,
      'age':age,
      'q_1':q_1, //Q1. Do you usually read a newspaper ?
      'q_2':q_2, //Q2. What favorite media do you like ?
    });
  }
}