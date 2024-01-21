import 'package:flutter/material.dart';
import 'package:flutter_application/app/components/card.dart';

class MyCardComments extends MyCard {
  // final Map<String, dynamic> child;
  const MyCardComments({super.key, required child}) : super(child: child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        alignment: Alignment.centerLeft,
        color: Colors.blueGrey,
        child: Column(
          children: [
            Text(child['email']),
            Text(child['body'])
          ],
        ),
      ),
    );
  }
}
