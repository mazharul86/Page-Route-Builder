import 'package:flutter/material.dart';
import 'package:pageroutebuilder/1st.dart';
import 'package:pageroutebuilder/pageroutbuilder.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("This Is Second Page"),
              Icon(
                Icons.wallet_giftcard_rounded,
                size: 120,
              ),
              FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context, MyCustomRoute(widget: Page1()));
                  },
                  label: Text("Previous Page"))
            ],
          ),
        ),
      ),
    );
  }
}
