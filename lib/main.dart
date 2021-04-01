import 'package:feedback/rating.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: RatingsPage(),
    );
  }
}

class RatingsPage extends StatefulWidget {
  @override
  _RatingsPage createState() => _RatingsPage();
}

class _RatingsPage extends State<RatingsPage> {
  int _rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Flutter Ratings Widget Demo"),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Give Feedback",
            style: TextStyle(
              color: Color(0xFFBF8989),
              fontSize: 24,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          SizedBox(
            height: 25,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How did we do?",
                  style: TextStyle(
                    color: Color(0xFFBF8989),
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Rating((rating) {
            setState(() {
              _rating = rating;
            });
          }),
          SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Care to share about it?",
                  style: TextStyle(
                    color: Color(0xFFBF8989),
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 35),
          SizedBox(
            child: TextField(
              onTap: () {},
              // {
              //   FocusScopeNode currentFocus = FocusScope.of(context);
              //   if (!currentFocus.hasPrimaryFocus) {
              //     currentFocus.unfocus();
              //   }
              // },
              minLines: 5,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFBF8989),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFCEAEAF),
                    width: 1.0,
                  ),
                ),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color(0xFFBF8989),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(18.0),
                  onPressed: () {},
                  child: Text(
                    "Submit".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
