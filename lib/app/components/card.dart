import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String child;

  const MyCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 236, 236, 236),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.left,
              child,
              style: const TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                Expanded(
                    child: TextButton(
                  onPressed: () {/**Aqui estará a logica para navegar para pagina de detalhas do post. */},
                  child: const Text('Ver mais'),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
