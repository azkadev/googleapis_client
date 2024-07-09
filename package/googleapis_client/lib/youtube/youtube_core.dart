/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: unused_local_variable, non_constant_identifier_names

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
