import 'package:domain/gallery/model/post_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required DateTime date,
    required PostType type,
    required String description,
    required List<String> gallery,
  }) = _Post;
}
