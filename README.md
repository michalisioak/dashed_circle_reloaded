# dashed_circle

A flutter package for drawing dashed circles. Can also be used with CustomPaint.

## Usage
![Dashed Circle with Bill Gates](https://i.imgur.com/385vWue.png)
```dart
import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Bill_Gates_Buys_Skype_%285707954468%29.jpg/2560px-Bill_Gates_Buys_Skype_%285707954468%29.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashed Circle Example',
      theme: ThemeData(),
      home: Scaffold(
        body: Center(
          child: DashedCircle(
            child: Padding(padding: EdgeInsets.all(6.0),
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage(url),
              ),
            ),
            color: Colors.deepOrangeAccent,
          )
        ),
      ),
    );
  }
}
```