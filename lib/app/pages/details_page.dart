import 'package:flutter/material.dart';
import 'package:flutter_application/app/components/card_comments.dart';
import 'package:flutter_application/app/stores/comments_store.dart';
import 'package:flutter_application/app/utils/dio_cliente.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  final Map<String, dynamic> child;

  late CommentsStore commentsStore;

  Details({super.key, required this.child}) {
    commentsStore = CommentsStore(client: DioClient(), id: child['id']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 236, 236, 236),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).viewPadding.top + 8.0),
              child: Text(child['body']),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                  ),
                  child: const Text(
                    'Comentarios',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                Expanded(
                  child: Observer(
                    builder: (context) => ListView.builder(
                      itemCount: commentsStore.comments.length,
                      itemBuilder: (context, index) {
                        return MyCardComments(
                          child: commentsStore.comments[index],
                        );
                      },
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
