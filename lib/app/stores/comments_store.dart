import 'package:flutter_application/app/utils/dio_cliente.dart';
import 'package:mobx/mobx.dart';

part 'comments_store.g.dart';

class CommentsStore = _CommentsStore with _$CommentsStore;

abstract class _CommentsStore with Store {
  final DioClient client;
  final int id;

  _CommentsStore({required this.client, required this.id}) {
    setComments();
  }

  @observable
  List<dynamic> comments = [];

  void setComments() async {
    comments = await client.get(url: 'https://jsonplaceholder.typicode.com/posts/${id}/comments');
  }
}