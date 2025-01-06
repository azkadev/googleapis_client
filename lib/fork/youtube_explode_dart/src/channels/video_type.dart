/// Video types provided by Youtube
enum VideoType {
  /// Default horizontal video
  normal('videos', 'videoRenderer'),

  /// Youtube shorts video
  shorts('shorts', 'shortsLockupViewModel');

  final String name;

  final String youtubeRenderText;

  const VideoType(this.name, this.youtubeRenderText);
}
