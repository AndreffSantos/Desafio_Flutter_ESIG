import 'package:flutter/material.dart';

class Details extends StatelessWidget {

  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        color: const Color.fromARGB(255, 236, 236, 236),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).viewPadding.top + 8.0),
          child: const Text('Detalhes do post.'),
        ),
      ),
    );
  }
}
