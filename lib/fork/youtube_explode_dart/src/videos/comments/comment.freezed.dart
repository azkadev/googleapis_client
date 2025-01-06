// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Comment {
  /// Comment author name.
  String get author => throw _privateConstructorUsedError;

  /// Comment author channel id.
  ChannelId get channelId => throw _privateConstructorUsedError;

  /// Comment text.
  String get text => throw _privateConstructorUsedError;

  /// Comment likes count.
  int get likeCount => throw _privateConstructorUsedError;

  /// Published time as string. (For example: "2 years ago")
  String get publishedTime => throw _privateConstructorUsedError;

  /// Comment reply count.
  int get replyCount => throw _privateConstructorUsedError;

  /// True if the comment is hearted by the creator.
//ignore: avoid_positional_boolean_parameters
  bool get isHearted => throw _privateConstructorUsedError;

  /// Used internally.
  /// Shouldn't be used in the code.

  String? get continuation => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.

  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) = _$CommentCopyWithImpl<$Res, Comment>;

  $Res call({String author, ChannelId channelId, String text, int likeCount, String publishedTime, int replyCount, bool isHearted, String? continuation});

  $ChannelIdCopyWith<$Res> get channelId;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? channelId = null,
    Object? text = null,
    Object? likeCount = null,
    Object? publishedTime = null,
    Object? replyCount = null,
    Object? isHearted = null,
    Object? continuation = null,
  }) {
    return _then(_value.copyWith(
      author:  author is String?author : _value.author,
      channelId:  channelId is ChannelId?channelId : _value.channelId,
      text: text is String?text : _value.text ,
      likeCount:  likeCount is int?likeCount : _value.likeCount,
      publishedTime:  publishedTime is String?publishedTime : _value.publishedTime ,
      replyCount:  replyCount is int?replyCount : _value.replyCount,
      isHearted:  isHearted is bool?isHearted : _value.isHearted,
      continuation: continuation is String ? continuation : _value.continuation,
    ) as $Val);
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res> get channelId {
    return $ChannelIdCopyWith<$Res>(_value.channelId, (value) {
      return _then(_value.copyWith(channelId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(_$CommentImpl value, $Res Function(_$CommentImpl) then) = __$$CommentImplCopyWithImpl<$Res>;
  @override
  $Res call({String author, ChannelId channelId, String text, int likeCount, String publishedTime, int replyCount, bool isHearted, String? continuation});

  @override
  $ChannelIdCopyWith<$Res> get channelId;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res, _$CommentImpl> implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(_$CommentImpl _value, $Res Function(_$CommentImpl) _then) : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? channelId = null,
    Object? text = null,
    Object? likeCount = null,
    Object? publishedTime = null,
    Object? replyCount = null,
    Object? isHearted = null,
    Object? continuation = null,
  }) {
    return _then(_$CommentImpl(
       author is String?author : _value.author,
      channelId is ChannelId?channelId : _value.channelId ,
       text is String?text : _value.text,
         likeCount is int?likeCount : _value.likeCount,
       publishedTime is String?publishedTime : _value.publishedTime ,
       replyCount is int?replyCount : _value.replyCount,
       isHearted is bool?isHearted : _value.isHearted,
      continuation is String ? continuation : _value.continuation,
    ));
  }
}

/// @nodoc

class _$CommentImpl implements _Comment {
  const _$CommentImpl(this.author, this.channelId, this.text, this.likeCount, this.publishedTime, this.replyCount, this.isHearted, this.continuation);

  /// Comment author name.
  @override
  final String author;

  /// Comment author channel id.
  @override
  final ChannelId channelId;

  /// Comment text.
  @override
  final String text;

  /// Comment likes count.
  @override
  final int likeCount;

  /// Published time as string. (For example: "2 years ago")
  @override
  final String publishedTime;

  /// Comment reply count.
  @override
  final int replyCount;

  /// True if the comment is hearted by the creator.
//ignore: avoid_positional_boolean_parameters
  @override
  final bool isHearted;

  /// Used internally.
  /// Shouldn't be used in the code.
  @override
  final String? continuation;

  @override
  String toString() {
    return 'Comment(author: $author, channelId: $channelId, text: $text, likeCount: $likeCount, publishedTime: $publishedTime, replyCount: $replyCount, isHearted: $isHearted, continuation: $continuation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CommentImpl && (identical(other.author, author) || other.author == author) && (identical(other.channelId, channelId) || other.channelId == channelId) && (identical(other.text, text) || other.text == text) && (identical(other.likeCount, likeCount) || other.likeCount == likeCount) && (identical(other.publishedTime, publishedTime) || other.publishedTime == publishedTime) && (identical(other.replyCount, replyCount) || other.replyCount == replyCount) && (identical(other.isHearted, isHearted) || other.isHearted == isHearted) && (identical(other.continuation, continuation) || other.continuation == continuation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, author, channelId, text, likeCount, publishedTime, replyCount, isHearted, continuation);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.

  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith => __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);
}

abstract class _Comment implements Comment {
  const factory _Comment(final String author, final ChannelId channelId, final String text, final int likeCount, final String publishedTime, final int replyCount, final bool isHearted, final String? continuation) = _$CommentImpl;

  /// Comment author name.
  @override
  String get author;

  /// Comment author channel id.
  @override
  ChannelId get channelId;

  /// Comment text.
  @override
  String get text;

  /// Comment likes count.
  @override
  int get likeCount;

  /// Published time as string. (For example: "2 years ago")
  @override
  String get publishedTime;

  /// Comment reply count.
  @override
  int get replyCount;

  /// True if the comment is hearted by the creator.
//ignore: avoid_positional_boolean_parameters
  @override
  bool get isHearted;

  /// Used internally.
  /// Shouldn't be used in the code.
  @override
  String? get continuation;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith => throw _privateConstructorUsedError;
}
