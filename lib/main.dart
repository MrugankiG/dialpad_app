import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: dial_pad(),
  debugShowCheckedModeBanner: false,
));

// ignore: camel_case_types
class dial_pad extends StatefulWidget {
  @override
  _dial_padState createState() => _dial_padState();
}

class _dial_padState extends State<dial_pad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
            'DIALPAD',
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.55 ,
            width: double.infinity,
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                operation,
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Divider(
            height: 0.0,
            color: Colors.white,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    customButton('1'),
                    customButton('4'),
                    customButton('7'),
                    customButton('<'),
                  ],
                ),
                Column(
                  children: [
                    customButton('2'),
                    customButton('5'),
                    customButton('8'),
                    customButton('0')
                  ],
                ),
                Column(
                  children: [
                    customButton('3'),
                    customButton('6'),
                    customButton('9'),
                    customButton('C'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget customButton(String val){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () => clickbutton(val),
        child: Text(
          val,
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  String operation = '';

  void clickbutton(String text) {
    if (text == 'C') {
      setState(() {
        operation = '';
      });
    }
    else if (text == '<') {
      setState(() {
        operation = operation.substring(0, operation.length - 1);
      });
    }
    else {
      setState(() {
        operation += text;
      });
    }
  }
}


