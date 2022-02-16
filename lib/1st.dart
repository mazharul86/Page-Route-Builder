import 'package:flutter/material.dart';
import 'package:pageroutebuilder/2nd.dart';
import 'package:pageroutebuilder/pageroutbuilder.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("This Is First Page"),
              Icon(
                Icons.account_box,
                size: 120,
              ),
              FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context, MyCustomRoute(widget: Page2()));
                  },
                  label: Text("Next Page"))
            ],
          ),
        ),
      ),
    );
  }
}
