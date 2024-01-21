import 'package:flutter/material.dart';
import 'package:flutter_application/app/components/card.dart';
import 'package:flutter_application/app/store/post_store.dart';
import 'package:flutter_application/app/utils/dio_cliente.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final PostStore postStore = PostStore(client: DioClient());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (context) => ListView.builder(
                itemCount: postStore.posts.length,
                itemBuilder: (context, index) {
                  return MyCard(
                    child: postStore.posts[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
