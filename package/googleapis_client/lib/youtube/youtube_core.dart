// ignore_for_file: unused_local_variable

import 'package:googleapis/youtube/v3.dart';
import 'package:googleapis_client/google_apis_client_key.dart';
import 'package:googleapis_client/googleapis_client_raw/google_apis_client_raw.dart';

class Youtube extends GoogleApisClientRaw {
  Youtube({
    required super.googleApisClientApiKey,
  });
  Future<YouTubeApi> youTubeApiClient(
      {GoogleApisClientApiKey? googleApisClientApiKey}) async {
    GoogleApisClientApiKey google_apis_client = await googleApisClient(
      googleApisClientApiKey: googleApisClientApiKey,
    );
    YouTubeApi yt = YouTubeApi(google_apis_client.google_auth_client);
    return yt;
  }

  Future<CommentThread> addComment({
    required String videoId,
    required String text,
    String? channelId,
    GoogleApisClientApiKey? googleApisClientApiKey,
  }) async {
    YouTubeApi youTubeApi =
        await youTubeApiClient(googleApisClientApiKey: googleApisClientApiKey);
    String channel_id = await () async {
      if (channelId is String) {
        if (channelId.isNotEmpty) {
          return channelId;
        }
      }
      // youTubeApi.channels.list([]);
      return "";
    }.call();
    return (await youTubeApi.commentThreads.insert(
      CommentThread(
        snippet: CommentThreadSnippet(
          videoId: videoId,
          channelId: channel_id,
          topLevelComment: Comment(
            snippet: CommentSnippet(
              textOriginal: text,
            ),
          ),
        ),
      ),
      ["snippet"],
    ));
  }

  subscribeChannel({
    required String channel,
    GoogleApisClientApiKey? googleApisClientApiKey,
  }) async {
    YouTubeApi youTubeApi =
        await youTubeApiClient(googleApisClientApiKey: googleApisClientApiKey);
    channel = "UC_x5XG1OV2P6uZZ5FSM9Ttw";
    return (await youTubeApi.subscriptions.insert(
      Subscription(
        snippet: SubscriptionSnippet(
          resourceId: ResourceId(
            kind: 'youtube#channel',
            channelId: channel,
          ),
        ),
      ),
      ["snippet"],
    ))
        .toJson();
  }

  unSubscribeChannel({
    required String channel,
    GoogleApisClientApiKey? googleApisClientApiKey,
  }) async {
    YouTubeApi youTubeApi =
        await youTubeApiClient(googleApisClientApiKey: googleApisClientApiKey);
    return await youTubeApi.subscriptions.delete(
      channel,
    );
  }
}
