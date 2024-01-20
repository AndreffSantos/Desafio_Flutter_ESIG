import 'package:flutter_application/app/utils/dio_cliente.dart';
import 'package:mobx/mobx.dart';

part 'post_store.g.dart';

class PostStore = _PostStore with _$PostStore;

abstract class _PostStore with Store {
  final DioClient client;

  _PostStore({required this.client});

  @observable
  List<dynamic> posts = [];

  Future getPosts() async {
    posts = await client.get(url: 'https://jsonplaceholder.typicode.com/posts');
  }
}