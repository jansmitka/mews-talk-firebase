import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:mews_talk_firebase/models/post_model.dart';
import 'package:mews_talk_firebase/utils/exceptions/firebase_exception.dart';

class PostRepository {
  final _postsRef =
      FirebaseFirestore.instance.collection('posts').orderBy('date');

  Future<List<Post>> fetchPosts() async {
    List<Post> fetchedPosts = [];
    try {
      final response = await _postsRef.get();
      for (final post in response.docs) {
        fetchedPosts.add(Post.fromJson(post.data()));
      }
      return fetchedPosts;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        throwFirebaseException(e.code, e.message);
      }
      return fetchedPosts;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
