import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mUItimedia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          //まだ未完成
          // TODO:ボックスを置く、横にスクロールして今風にするのもありかも
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Text(
                'Youtube',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Original',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Twitter',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'TikTok',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
