import 'package:flutter/material.dart';
import 'package:share/share.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var shareController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: TextFormField(
                controller: shareController,
                decoration: InputDecoration(
                  hintText: 'Please Enter Text You Wish To Share',
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              elevation: 0,
              color: Colors.blue,
              onPressed: () {
                Share.share(
                  shareController.text,
                );
                setState(() {
                  shareController.text = '';
                });
              },
              child: Text(
                'Share',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
