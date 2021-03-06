import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelpDetailScreen extends StatelessWidget {

  final String itemHolder ;
  final String content;
  final String subTitle;

  HelpDetailScreen({Key key, @required this.itemHolder, @required this.content, @required this.subTitle}) : super(key: key);


  goBack(BuildContext context){
    Navigator.pop(context);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(itemHolder),
        ),

        body: Card(
          child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 8,
                ),
              //  borderRadius: BorderRadius.circular(12),
          ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subTitle,
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 16,
                       )

                   ),
            ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    content,
                      style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                   ),
                ),

              ],


            ),
          ),


            ),


        );

  }
}
