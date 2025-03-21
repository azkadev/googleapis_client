// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Video {
  /// Video ID.
  VideoId get id => throw _privateConstructorUsedError;

  /// Video title.
  String get title => throw _privateConstructorUsedError;

  /// Video author.
  String get author => throw _privateConstructorUsedError;

  /// Video author Id.
  ChannelId get channelId => throw _privateConstructorUsedError;

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  DateTime? get uploadDate => throw _privateConstructorUsedError;
  String? get uploadDateRaw => throw _privateConstructorUsedError;

  /// Video publish date.
  DateTime? get publishDate => throw _privateConstructorUsedError;

  /// Video description.
  String get description => throw _privateConstructorUsedError;

  /// Duration of the video.
  Duration? get duration => throw _privateConstructorUsedError;

  /// Available thumbnails for this video.
  ThumbnailSet get thumbnails => throw _privateConstructorUsedError;

  /// Search keywords used for this video.
  UnmodifiableListView<String> get keywords =>
      throw _privateConstructorUsedError;

  /// Engagement statistics for this video.
  Engagement get engagement => throw _privateConstructorUsedError;

  /// Returns true if this is a live stream.
//ignore: avoid_positional_boolean_parameters
  bool get isLive => throw _privateConstructorUsedError;

  /// Used internally.
  /// Shouldn't be used in the code.

  WatchPage? get watchPage => throw _privateConstructorUsedError;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.

  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;

  $Res call(
      {VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      UnmodifiableListView<String> keywords,
      Engagement engagement,
      bool isLive,
      WatchPage? watchPage});

  $VideoIdCopyWith<$Res> get id;
  $ChannelIdCopyWith<$Res> get channelId;
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? channelId = null,
    Object? uploadDate = null,
    Object? uploadDateRaw = null,
    Object? publishDate = null,
    Object? description = null,
    Object? duration = null,
    Object? thumbnails = null,
    Object? keywords = null,
    Object? engagement = null,
    Object? isLive = null,
    Object? watchPage = null,
  }) {
    return _then(_value.copyWith(
      id: id is VideoId ? id : _value.id,
      title: title is String ? title : _value.title,
      author: author is String ? author : _value.author,
      channelId: channelId is ChannelId ? channelId : _value.channelId,
      uploadDate: uploadDate is DateTime ? uploadDate : _value.uploadDate,
      uploadDateRaw:
          uploadDateRaw is String ? uploadDateRaw : _value.uploadDateRaw,
      publishDate: publishDate is DateTime ? publishDate : _value.publishDate,
      description: description is String ? description : _value.description,
      duration: duration is Duration ? duration : _value.duration,
      thumbnails: thumbnails is ThumbnailSet ? thumbnails : _value.thumbnails,
      keywords:
          keywords is UnmodifiableListView<String> ? keywords : _value.keywords,
      engagement: engagement is Engagement ? engagement : _value.engagement,
      isLive: isLive is bool ? isLive : _value.isLive,
      watchPage: watchPage is WatchPage ? watchPage : _value.watchPage,
    ) as $Val);
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoIdCopyWith<$Res> get id {
    return $VideoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res> get channelId {
    return $ChannelIdCopyWith<$Res>(_value.channelId, (value) {
      return _then(_value.copyWith(channelId: value) as $Val);
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailSetCopyWith<$Res> get thumbnails {
    return $ThumbnailSetCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngagementCopyWith<$Res> get engagement {
    return $EngagementCopyWith<$Res>(_value.engagement, (value) {
      return _then(_value.copyWith(engagement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      UnmodifiableListView<String> keywords,
      Engagement engagement,
      bool isLive,
      WatchPage? watchPage});

  @override
  $VideoIdCopyWith<$Res> get id;
  @override
  $ChannelIdCopyWith<$Res> get channelId;
  @override
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  @override
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? channelId = null,
    Object? uploadDate = null,
    Object? uploadDateRaw = null,
    Object? publishDate = null,
    Object? description = null,
    Object? duration = null,
    Object? thumbnails = null,
    Object? keywords = null,
    Object? engagement = null,
    Object? isLive = null,
    Object? watchPage = null,
  }) {
    return _then(_$VideoImpl(
      id is VideoId ? id : _value.id,
      title is String ? title : _value.title,
      author is String ? author : _value.author,
      channelId is ChannelId ? channelId : _value.channelId,
      uploadDate is DateTime ? uploadDate : _value.uploadDate,
      uploadDateRaw is String ? uploadDateRaw : _value.uploadDateRaw,
      publishDate is DateTime ? publishDate : _value.publishDate,
      description is String ? description : _value.description,
      duration is Duration ? duration : _value.duration,
      thumbnails is ThumbnailSet ? thumbnails : _value.thumbnails,
      keywords is UnmodifiableListView<String> ? keywords : _value.keywords,
      engagement is Engagement ? engagement : _value.engagement,
      isLive is bool ? isLive : _value.isLive,
      watchPage is WatchPage ? watchPage : _value.watchPage,
    ));
  }
}

/// @nodoc

class _$VideoImpl extends _Video {
  const _$VideoImpl(
      this.id,
      this.title,
      this.author,
      this.channelId,
      this.uploadDate,
      this.uploadDateRaw,
      this.publishDate,
      this.description,
      this.duration,
      this.thumbnails,
      this.keywords,
      this.engagement,
      this.isLive,
      [this.watchPage])
      : super._();

  /// Video ID.
  @override
  final VideoId id;

  /// Video title.
  @override
  final String title;

  /// Video author.
  @override
  final String author;

  /// Video author Id.
  @override
  final ChannelId channelId;

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  @override
  final DateTime? uploadDate;
  @override
  final String? uploadDateRaw;

  /// Video publish date.
  @override
  final DateTime? publishDate;

  /// Video description.
  @override
  final String description;

  /// Duration of the video.
  @override
  final Duration? duration;

  /// Available thumbnails for this video.
  @override
  final ThumbnailSet thumbnails;

  /// Search keywords used for this video.
  @override
  final UnmodifiableListView<String> keywords;

  /// Engagement statistics for this video.
  @override
  final Engagement engagement;

  /// Returns true if this is a live stream.
//ignore: avoid_positional_boolean_parameters
  @override
  final bool isLive;

  /// Used internally.
  /// Shouldn't be used in the code.
  @override
  final WatchPage? watchPage;

  @override
  String toString() {
    return 'Video._internal(id: $id, title: $title, author: $author, channelId: $channelId, uploadDate: $uploadDate, uploadDateRaw: $uploadDateRaw, publishDate: $publishDate, description: $description, duration: $duration, thumbnails: $thumbnails, keywords: $keywords, engagement: $engagement, isLive: $isLive, watchPage: $watchPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate) &&
            (identical(other.uploadDateRaw, uploadDateRaw) ||
                other.uploadDateRaw == uploadDateRaw) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            const DeepCollectionEquality().equals(other.keywords, keywords) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.watchPage, watchPage) ||
                other.watchPage == watchPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      channelId,
      uploadDate,
      uploadDateRaw,
      publishDate,
      description,
      duration,
      thumbnails,
      const DeepCollectionEquality().hash(keywords),
      engagement,
      isLive,
      watchPage);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.

  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);
}

abstract class _Video extends Video {
  const factory _Video(
      final VideoId id,
      final String title,
      final String author,
      final ChannelId channelId,
      final DateTime? uploadDate,
      final String? uploadDateRaw,
      final DateTime? publishDate,
      final String description,
      final Duration? duration,
      final ThumbnailSet thumbnails,
      final UnmodifiableListView<String> keywords,
      final Engagement engagement,
      final bool isLive,
      [final WatchPage? watchPage]) = _$VideoImpl;
  const _Video._() : super._();

  /// Video ID.
  @override
  VideoId get id;

  /// Video title.
  @override
  String get title;

  /// Video author.
  @override
  String get author;

  /// Video author Id.
  @override
  ChannelId get channelId;

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  @override
  DateTime? get uploadDate;
  @override
  String? get uploadDateRaw;

  /// Video publish date.
  @override
  DateTime? get publishDate;

  /// Video description.
  @override
  String get description;

  /// Duration of the video.
  @override
  Duration? get duration;

  /// Available thumbnails for this video.
  @override
  ThumbnailSet get thumbnails;

  /// Search keywords used for this video.
  @override
  UnmodifiableListView<String> get keywords;

  /// Engagement statistics for this video.
  @override
  Engagement get engagement;

  /// Returns true if this is a live stream.
//ignore: avoid_positional_boolean_parameters
  @override
  bool get isLive;

  /// Used internally.
  /// Shouldn't be used in the code.
  @override
  WatchPage? get watchPage;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
