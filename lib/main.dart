import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_app/book_list_page.dart';
import 'package:youtube_app/main_model.dart';

void main () async{
  runApp(MyApp());
  await Firebase.initializeApp();
}
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return MaterialApp(

     title: 'Flutter demo',
      home: ChangeNotifierProvider<Mainmodel>(
        create: (_) => Mainmodel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text ('kyosuketube'),
          ),
        body: Consumer<Mainmodel> (builder: (context, model,child) {
            return Center(
              child: Column(
              children: [
                    Text(
                      model.aboyText,
                      style:TextStyle(
                        fontSize: 30,
                      )
                    ),
                RaisedButton(
                  child: Text('ボタン'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookListPage()));
                  },
                ),
              ],
            ),
            );
          }
        ),
    ),
      ),
    );
  }
}
