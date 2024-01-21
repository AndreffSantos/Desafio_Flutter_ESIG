// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CommentsStore on _CommentsStore, Store {
  late final _$commentsAtom =
      Atom(name: '_CommentsStore.comments', context: context);

  @override
  List<dynamic> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(List<dynamic> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  @override
  String toString() {
    return '''
comments: ${comments}
    ''';
  }
}
