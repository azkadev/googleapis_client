part 'thumbnail.freezed.dart';

/// Represent a channel thumbnail

class Thumbnail with _$Thumbnail {
  const factory Thumbnail(
    /// Image url.
    Uri url,

    /// Image height.
    int height,

    /// Image width.
    int width,
  ) = _Thumbnail;
}
