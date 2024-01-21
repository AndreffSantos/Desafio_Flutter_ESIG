import 'package:flutter/material.dart';
import 'package:flutter_application/app/pages/details_page.dart';

class MyCard extends StatelessWidget {
  final Map<String, dynamic> child;

  const MyCard({super.key, required this.child});

  void navigateToDetails(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Details(
        child: child,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: GestureDetector(
        onTap: () {
          navigateToDetails(context);
        },
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 236, 236, 236),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  child['title'].toString().toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
              Text(
                child['body'].toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(),
                  ),
                  Expanded(
                      child: TextButton(
                    onPressed: () {
                      navigateToDetails(context);
                    },
                    child: const Text('Ver mais'),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
