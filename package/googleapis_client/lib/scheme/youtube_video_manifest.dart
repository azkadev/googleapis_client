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
// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "youtube_video_manifest_audio.dart";
import "youtube_video_manifest_video.dart";
import "youtube_video_manifest_muxed.dart";
import "youtube_video_manifest_stream.dart";

class YoutubeVideoManifest extends JsonScheme {
  YoutubeVideoManifest(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeVideoManifest",
      "audios": [
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "opus",
          "bitrate": 44805,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 186994,
          "tag": 600,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=600&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=186994&dur=37.221&lmt=1664677491541303&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgBjwt4BF04_bq_JjghaDg-C-HcBReqmO_Rl4Y7pcI378CIQDdBasqy_CCu2Xq9TZiNbh4NYk51K5ONvWF356RO8eJZQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "mp4a.40.2",
          "bitrate": 315804,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "360p",
          "size": 1468202,
          "tag": 18,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=18&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1666471503680779&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6310224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgOkni6w0BkaQ83UwzSDFj88Pl9hScZmmT2_AOTKYqeisCIQChKclyXZwY1tgkJS3OBT-wH4rX8RQR8rgGQqTk0EwvVg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "mp4a.40.2",
          "bitrate": 606548,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "720p",
          "size": 2820161,
          "tag": 22,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=22&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1664677501622239&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgFNaeVcBN9tO9TyItsatY3xsi4GcmIdLtkniFhzgNDfgCIQCj2kW3ukP7qMWsPPiS8H_Ko1MqUkdOP7DX6O873USEjg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "mp4a.40.5",
          "bitrate": 49998,
          "mime_type": "audio/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "tiny",
          "size": 228667,
          "tag": 139,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=139&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fmp4&gir=yes&clen=228667&dur=37.337&lmt=1664677490536042&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRAIgXy0ne19TbEzgIHx9fJueUwYAtvRlUbaDnMy7iULxMKwCIECU6-gcejBMx7I8bXrR1abT_hR4m1oFA7wgQRn5Jk4W&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "mp4a.40.2",
          "bitrate": 130422,
          "mime_type": "audio/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "tiny",
          "size": 603836,
          "tag": 140,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=140&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fmp4&gir=yes&clen=603836&dur=37.268&lmt=1664677491025846&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAI1OTeAVWipWs3ezgw51XDsqDk8FFQT4lYkgjYsu1XS7AiBM9E5Q3WO9IFs4wZpIrL18PtDNWqqKds7fpnWmjW_n6A%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "opus",
          "bitrate": 64846,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 276634,
          "tag": 249,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=249&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=276634&dur=37.221&lmt=1664677491568727&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALP0QjwSaFxBr56qCKyF9bGgng7AvQXF2PguDUrxQwrMAiADf571_DI8J-JwE2sqok0BSt9QUQMFlq71fcsR-JaSKg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "opus",
          "bitrate": 84862,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 364620,
          "tag": 250,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=250&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=364620&dur=37.221&lmt=1664677500558311&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAL71JcejtH9AWd6xPTT5f03L8G7J89L2T7pqaojqqooKAiEA8NUkgA3zKD7kRj_Hy9amwpfMJ82oWSnB0sQbgtlYm_A%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "opus",
          "bitrate": 166798,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 728596,
          "tag": 251,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=251&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=728596&dur=37.221&lmt=1664677492479970&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgbxhxngTK9F4QnLXaCargCuvIy-FgLGqZFTbcr8BQuhgCIQDmnL5evrbkEFQVyAhliH4EgNgPTWle3gOQ2GxaxpzPzg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "mp4a.40.5",
          "bitrate": 32176,
          "mime_type": "audio/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "tiny",
          "size": 144871,
          "tag": 599,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=599&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fmp4&gir=yes&clen=144871&dur=37.337&lmt=1664677488480423&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRAIgP9oYqTlLpg6IFz5t8-CsRal46_7A1mT67g0SJ1-JYpICIDbjNpwi40rlKN_XVkxSteEwbl0uU79FZxWrvycvtFWg&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestAudio",
          "video_codec": "opus",
          "bitrate": 44805,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 186994,
          "tag": 600,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=600&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=186994&dur=37.221&lmt=1664677491541303&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgBjwt4BF04_bq_JjghaDg-C-HcBReqmO_Rl4Y7pcI378CIQDdBasqy_CCu2Xq9TZiNbh4NYk51K5ONvWF356RO8eJZQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        }
      ],
      "videos": [
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 15,
          "video_codec": "vp9",
          "video_quality": "low144",
          "height": 256,
          "width": 116,
          "bitrate": 28391,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "144p",
          "size": 110089,
          "tag": 598,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=598&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=110089&dur=37.199&lmt=1664677494839255&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgAMBXXePunuUH3p1KvvXip59fHD2YkD8UV7cDli0R9KcCIQDa_YqIpt_pia5H3Dn6Adsi8spZuZxQaWvhk4qaZlDGsQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.42001e",
          "video_quality": "medium360",
          "height": 640,
          "width": 288,
          "bitrate": 315804,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "360p",
          "size": 1468202,
          "tag": 18,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=18&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1666471503680779&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6310224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgOkni6w0BkaQ83UwzSDFj88Pl9hScZmmT2_AOTKYqeisCIQChKclyXZwY1tgkJS3OBT-wH4rX8RQR8rgGQqTk0EwvVg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.64001f",
          "video_quality": "high720",
          "height": 1280,
          "width": 576,
          "bitrate": 606548,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "720p",
          "size": 2820161,
          "tag": 22,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=22&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1664677501622239&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgFNaeVcBN9tO9TyItsatY3xsi4GcmIdLtkniFhzgNDfgCIQCj2kW3ukP7qMWsPPiS8H_Ko1MqUkdOP7DX6O873USEjg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.640028",
          "video_quality": "high1080",
          "height": 1920,
          "width": 864,
          "bitrate": 1347055,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "1080p",
          "size": 3634517,
          "tag": 137,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=137&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=3634517&dur=37.199&lmt=1664677495676187&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAPZ8JHtuZK8QqwuD7mxlg7ayNqFz72qCHb1Dt3p1ljz7AiEAiIqUTGMTSx8V-23JIn9wClZwE8yLfOONj-_OSr7q-Wg%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "vp9",
          "video_quality": "high1080",
          "height": 1920,
          "width": 864,
          "bitrate": 762490,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "1080p",
          "size": 2587040,
          "tag": 248,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=248&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=2587040&dur=37.200&lmt=1664677494517249&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAJEXZ1a4nZlEqzGJpWwmXveehzjNy25-YhYtFjs-XMuKAiEA-keC-9P9a7yjHCrb3NdDryVCFN31-0ay1rYa3yLx-Io%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.64001f",
          "video_quality": "high720",
          "height": 1280,
          "width": 576,
          "bitrate": 792686,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "720p",
          "size": 2222757,
          "tag": 136,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=136&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=2222757&dur=37.199&lmt=1664677499654817&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRAIgYeaA_EgGR9ZXq0OPrdrW17dl8LLW_e5Y5zEtaDteascCIFNQhzFfWE8AEOb5jjJGgrJz6LzXSby1YwoTl3RvMQUz&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "vp9",
          "video_quality": "high720",
          "height": 1280,
          "width": 576,
          "bitrate": 383507,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "720p",
          "size": 1282252,
          "tag": 247,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=247&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=1282252&dur=37.200&lmt=1664677495547859&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgRXWCi5W6N5-81qRz8Lw0LGCGGQxe4lwefqEyU9b0af4CIQCvRCeraldwhTCPB7kLHuTjN0KuNR_gk4Gu0E0K3KvPeg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.4d401e",
          "video_quality": "medium480",
          "height": 854,
          "width": 384,
          "bitrate": 424943,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "480p",
          "size": 1411429,
          "tag": 135,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=135&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=1411429&dur=37.199&lmt=1664677495902583&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAIS6EL-klpTdb87r1BIuK5XOIP4sQjyxngQa7Ygpwej_AiEAquW7WcRw4EPFOd93Hfbph44fC_NUijkdZp6kcJNYP9c%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "vp9",
          "video_quality": "medium480",
          "height": 854,
          "width": 384,
          "bitrate": 226843,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "480p",
          "size": 815309,
          "tag": 244,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=244&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=815309&dur=37.200&lmt=1664677502245563&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhANKDNsD3rAsdYGXNAipAsDIH5aWCve__mFfq-XuqDpZDAiBIK_cSrB6_sV3NmQKdSU17WlXNpbrxPrBeEIQpvoU_Sg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.4d401e",
          "video_quality": "medium360",
          "height": 640,
          "width": 288,
          "bitrate": 231890,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "360p",
          "size": 871734,
          "tag": 134,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=134&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=871734&dur=37.199&lmt=1664677493153558&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAIEN1omszLKkX5ZsOsp6WbdztjV70LMhvO8sBX6n1kseAiEAtqna1it8-CqDYy9GccsKUqw1pUU5kVLKY2zCic1jQco%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "vp9",
          "video_quality": "medium360",
          "height": 640,
          "width": 288,
          "bitrate": 151744,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "360p",
          "size": 559268,
          "tag": 243,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=243&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=559268&dur=37.200&lmt=1664677500788476&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgJSNIieM7zc6YQseMOuE8_9qbUmVdylMH6RKliFvoxHcCIQCqpTRbA90Zt1l71SaEaudagXArUbsey1zVRvKlWeSQ4g%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.4d400d",
          "video_quality": "low144",
          "height": 426,
          "width": 192,
          "bitrate": 116770,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "240p",
          "size": 475183,
          "tag": 133,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=133&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=475183&dur=37.199&lmt=1664677496778085&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgVSKmuyi8Dt6FxdjnkswWPzBXwPbWu-Cef9vK-3kYZCUCIQC1T1lKkw4i-Fe-6nEKAeXeLd4r0veywIdqvurV8I4HJQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "vp9",
          "video_quality": "low144",
          "height": 426,
          "width": 192,
          "bitrate": 89798,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "240p",
          "size": 351225,
          "tag": 242,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=242&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=351225&dur=37.200&lmt=1664677501337684&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgQu-D6cYRqxCtoZ2svFsyhAOugVrOV774GISqmDLXcYoCIQCeOe8XQ-B5xTQ7ldz2-MQgqsV_RTPMX37QQlY4UT3W0g%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "avc1.4d400c",
          "video_quality": "low144",
          "height": 256,
          "width": 116,
          "bitrate": 50799,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "144p",
          "size": 219269,
          "tag": 160,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=160&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=219269&dur=37.199&lmt=1664677496069782&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgMbyvLHjyQOO4XrQKoFltdjIbRNED4SX7DBdJ-T0hFqgCIQCro7xGynll97inBhH6XQtRvpieklp1Lh953fHmVzxcxA%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 30,
          "video_codec": "vp9",
          "video_quality": "low144",
          "height": 256,
          "width": 116,
          "bitrate": 57848,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "144p",
          "size": 240062,
          "tag": 278,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=278&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=240062&dur=37.200&lmt=1664677500219813&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAOwfOPGA-gNb56UDCYATqegMn7mPQ7rrX75O61f3KIG3AiEA_MY5lousO6y6XaDRs53s1MbdJ5U8kMMsyYqclvcPSLo%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 15,
          "video_codec": "avc1.4d400b",
          "video_quality": "low144",
          "height": 256,
          "width": 116,
          "bitrate": 28617,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "144p",
          "size": 120509,
          "tag": 597,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=597&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=120509&dur=37.199&lmt=1664677493740807&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAN_leKGQ6H1rWzSyVNISGXN2NUMtJgT34-yKoaSwjPK3AiEA1uTqmgL_cXmCrXJH2Fv16k7tIw9kT_ZYNNZ3LD_egso%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestVideo",
          "framerate": 15,
          "video_codec": "vp9",
          "video_quality": "low144",
          "height": 256,
          "width": 116,
          "bitrate": 28391,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "144p",
          "size": 110089,
          "tag": 598,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=598&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=110089&dur=37.199&lmt=1664677494839255&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgAMBXXePunuUH3p1KvvXip59fHD2YkD8UV7cDli0R9KcCIQDa_YqIpt_pia5H3Dn6Adsi8spZuZxQaWvhk4qaZlDGsQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        }
      ],
      "muxeds": [
        {
          "@type": "youtubeVideoManifestMuxed",
          "audio_codec": "mp4a.40.2",
          "framerate": 30,
          "video_codec": "avc1.64001f",
          "video_quality": "high720",
          "height": 1280,
          "width": 576,
          "bitrate": 606548,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "720p",
          "size": 2820161,
          "tag": 22,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=22&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1664677501622239&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgFNaeVcBN9tO9TyItsatY3xsi4GcmIdLtkniFhzgNDfgCIQCj2kW3ukP7qMWsPPiS8H_Ko1MqUkdOP7DX6O873USEjg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestMuxed",
          "audio_codec": "mp4a.40.2",
          "framerate": 30,
          "video_codec": "avc1.42001e",
          "video_quality": "medium360",
          "height": 640,
          "width": 288,
          "bitrate": 315804,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "360p",
          "size": 1468202,
          "tag": 18,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=18&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1666471503680779&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6310224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgOkni6w0BkaQ83UwzSDFj88Pl9hScZmmT2_AOTKYqeisCIQChKclyXZwY1tgkJS3OBT-wH4rX8RQR8rgGQqTk0EwvVg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestMuxed",
          "audio_codec": "mp4a.40.2",
          "framerate": 30,
          "video_codec": "avc1.64001f",
          "video_quality": "high720",
          "height": 1280,
          "width": 576,
          "bitrate": 606548,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "720p",
          "size": 2820161,
          "tag": 22,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=22&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1664677501622239&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgFNaeVcBN9tO9TyItsatY3xsi4GcmIdLtkniFhzgNDfgCIQCj2kW3ukP7qMWsPPiS8H_Ko1MqUkdOP7DX6O873USEjg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        }
      ],
      "streams": [
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 44805,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 186994,
          "tag": 600,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=600&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=186994&dur=37.221&lmt=1664677491541303&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgBjwt4BF04_bq_JjghaDg-C-HcBReqmO_Rl4Y7pcI378CIQDdBasqy_CCu2Xq9TZiNbh4NYk51K5ONvWF356RO8eJZQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 315804,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "360p",
          "size": 1468202,
          "tag": 18,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=18&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1666471503680779&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6310224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgOkni6w0BkaQ83UwzSDFj88Pl9hScZmmT2_AOTKYqeisCIQChKclyXZwY1tgkJS3OBT-wH4rX8RQR8rgGQqTk0EwvVg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 606548,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": false,
          "quality": "720p",
          "size": 2820161,
          "tag": 22,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=22&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=37.268&lmt=1664677501622239&mt=1684639991&fvip=3&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgFNaeVcBN9tO9TyItsatY3xsi4GcmIdLtkniFhzgNDfgCIQCj2kW3ukP7qMWsPPiS8H_Ko1MqUkdOP7DX6O873USEjg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 1347055,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "1080p",
          "size": 3634517,
          "tag": 137,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=137&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=3634517&dur=37.199&lmt=1664677495676187&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAPZ8JHtuZK8QqwuD7mxlg7ayNqFz72qCHb1Dt3p1ljz7AiEAiIqUTGMTSx8V-23JIn9wClZwE8yLfOONj-_OSr7q-Wg%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 762490,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "1080p",
          "size": 2587040,
          "tag": 248,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=248&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=2587040&dur=37.200&lmt=1664677494517249&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAJEXZ1a4nZlEqzGJpWwmXveehzjNy25-YhYtFjs-XMuKAiEA-keC-9P9a7yjHCrb3NdDryVCFN31-0ay1rYa3yLx-Io%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 792686,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "720p",
          "size": 2222757,
          "tag": 136,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=136&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=2222757&dur=37.199&lmt=1664677499654817&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRAIgYeaA_EgGR9ZXq0OPrdrW17dl8LLW_e5Y5zEtaDteascCIFNQhzFfWE8AEOb5jjJGgrJz6LzXSby1YwoTl3RvMQUz&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 383507,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "720p",
          "size": 1282252,
          "tag": 247,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=247&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=1282252&dur=37.200&lmt=1664677495547859&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgRXWCi5W6N5-81qRz8Lw0LGCGGQxe4lwefqEyU9b0af4CIQCvRCeraldwhTCPB7kLHuTjN0KuNR_gk4Gu0E0K3KvPeg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 424943,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "480p",
          "size": 1411429,
          "tag": 135,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=135&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=1411429&dur=37.199&lmt=1664677495902583&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAIS6EL-klpTdb87r1BIuK5XOIP4sQjyxngQa7Ygpwej_AiEAquW7WcRw4EPFOd93Hfbph44fC_NUijkdZp6kcJNYP9c%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 226843,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "480p",
          "size": 815309,
          "tag": 244,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=244&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=815309&dur=37.200&lmt=1664677502245563&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhANKDNsD3rAsdYGXNAipAsDIH5aWCve__mFfq-XuqDpZDAiBIK_cSrB6_sV3NmQKdSU17WlXNpbrxPrBeEIQpvoU_Sg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 231890,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "360p",
          "size": 871734,
          "tag": 134,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=134&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=871734&dur=37.199&lmt=1664677493153558&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAIEN1omszLKkX5ZsOsp6WbdztjV70LMhvO8sBX6n1kseAiEAtqna1it8-CqDYy9GccsKUqw1pUU5kVLKY2zCic1jQco%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 151744,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "360p",
          "size": 559268,
          "tag": 243,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=243&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=559268&dur=37.200&lmt=1664677500788476&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgJSNIieM7zc6YQseMOuE8_9qbUmVdylMH6RKliFvoxHcCIQCqpTRbA90Zt1l71SaEaudagXArUbsey1zVRvKlWeSQ4g%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 116770,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "240p",
          "size": 475183,
          "tag": 133,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=133&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=475183&dur=37.199&lmt=1664677496778085&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgVSKmuyi8Dt6FxdjnkswWPzBXwPbWu-Cef9vK-3kYZCUCIQC1T1lKkw4i-Fe-6nEKAeXeLd4r0veywIdqvurV8I4HJQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 89798,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "240p",
          "size": 351225,
          "tag": 242,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=242&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=351225&dur=37.200&lmt=1664677501337684&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgQu-D6cYRqxCtoZ2svFsyhAOugVrOV774GISqmDLXcYoCIQCeOe8XQ-B5xTQ7ldz2-MQgqsV_RTPMX37QQlY4UT3W0g%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 50799,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "144p",
          "size": 219269,
          "tag": 160,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=160&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=219269&dur=37.199&lmt=1664677496069782&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgMbyvLHjyQOO4XrQKoFltdjIbRNED4SX7DBdJ-T0hFqgCIQCro7xGynll97inBhH6XQtRvpieklp1Lh953fHmVzxcxA%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 57848,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "144p",
          "size": 240062,
          "tag": 278,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=278&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=240062&dur=37.200&lmt=1664677500219813&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAOwfOPGA-gNb56UDCYATqegMn7mPQ7rrX75O61f3KIG3AiEA_MY5lousO6y6XaDRs53s1MbdJ5U8kMMsyYqclvcPSLo%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 28617,
          "mime_type": "video/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "144p",
          "size": 120509,
          "tag": 597,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=597&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=120509&dur=37.199&lmt=1664677493740807&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAN_leKGQ6H1rWzSyVNISGXN2NUMtJgT34-yKoaSwjPK3AiEA1uTqmgL_cXmCrXJH2Fv16k7tIw9kT_ZYNNZ3LD_egso%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 28391,
          "mime_type": "video/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "144p",
          "size": 110089,
          "tag": 598,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=598&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=110089&dur=37.199&lmt=1664677494839255&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgAMBXXePunuUH3p1KvvXip59fHD2YkD8UV7cDli0R9KcCIQDa_YqIpt_pia5H3Dn6Adsi8spZuZxQaWvhk4qaZlDGsQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 49998,
          "mime_type": "audio/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "tiny",
          "size": 228667,
          "tag": 139,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=139&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fmp4&gir=yes&clen=228667&dur=37.337&lmt=1664677490536042&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRAIgXy0ne19TbEzgIHx9fJueUwYAtvRlUbaDnMy7iULxMKwCIECU6-gcejBMx7I8bXrR1abT_hR4m1oFA7wgQRn5Jk4W&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 130422,
          "mime_type": "audio/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "tiny",
          "size": 603836,
          "tag": 140,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=140&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fmp4&gir=yes&clen=603836&dur=37.268&lmt=1664677491025846&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAI1OTeAVWipWs3ezgw51XDsqDk8FFQT4lYkgjYsu1XS7AiBM9E5Q3WO9IFs4wZpIrL18PtDNWqqKds7fpnWmjW_n6A%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 64846,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 276634,
          "tag": 249,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=249&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=276634&dur=37.221&lmt=1664677491568727&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALP0QjwSaFxBr56qCKyF9bGgng7AvQXF2PguDUrxQwrMAiADf571_DI8J-JwE2sqok0BSt9QUQMFlq71fcsR-JaSKg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 84862,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 364620,
          "tag": 250,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=250&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=364620&dur=37.221&lmt=1664677500558311&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAL71JcejtH9AWd6xPTT5f03L8G7J89L2T7pqaojqqooKAiEA8NUkgA3zKD7kRj_Hy9amwpfMJ82oWSnB0sQbgtlYm_A%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 166798,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 728596,
          "tag": 251,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=251&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=728596&dur=37.221&lmt=1664677492479970&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgbxhxngTK9F4QnLXaCargCuvIy-FgLGqZFTbcr8BQuhgCIQDmnL5evrbkEFQVyAhliH4EgNgPTWle3gOQ2GxaxpzPzg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 32176,
          "mime_type": "audio/mp4",
          "container_name": "mp4",
          "is_throttled": true,
          "quality": "tiny",
          "size": 144871,
          "tag": 599,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=599&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fmp4&gir=yes&clen=144871&dur=37.337&lmt=1664677488480423&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRAIgP9oYqTlLpg6IFz5t8-CsRal46_7A1mT67g0SJ1-JYpICIDbjNpwi40rlKN_XVkxSteEwbl0uU79FZxWrvycvtFWg&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        },
        {
          "@type": "youtubeVideoManifestStream",
          "bitrate": 44805,
          "mime_type": "audio/webm",
          "container_name": "webm",
          "is_throttled": true,
          "quality": "tiny",
          "size": 186994,
          "tag": 600,
          "url":
              "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=600&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=186994&dur=37.221&lmt=1664677491541303&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgBjwt4BF04_bq_JjghaDg-C-HcBReqmO_Rl4Y7pcI378CIQDdBasqy_CCu2Xq9TZiNbh4NYk51K5ONvWF356RO8eJZQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
        }
      ]
    };
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  List<YoutubeVideoManifestAudio> get audios {
    try {
      if (rawData["audios"] is List == false) {
        return [];
      }
      return (rawData["audios"] as List)
          .map((e) => YoutubeVideoManifestAudio(e as Map))
          .toList()
          .cast<YoutubeVideoManifestAudio>();
    } catch (e) {
      return [];
    }
  }

  List<YoutubeVideoManifestVideo> get videos {
    try {
      if (rawData["videos"] is List == false) {
        return [];
      }
      return (rawData["videos"] as List)
          .map((e) => YoutubeVideoManifestVideo(e as Map))
          .toList()
          .cast<YoutubeVideoManifestVideo>();
    } catch (e) {
      return [];
    }
  }

  List<YoutubeVideoManifestMuxed> get muxeds {
    try {
      if (rawData["muxeds"] is List == false) {
        return [];
      }
      return (rawData["muxeds"] as List)
          .map((e) => YoutubeVideoManifestMuxed(e as Map))
          .toList()
          .cast<YoutubeVideoManifestMuxed>();
    } catch (e) {
      return [];
    }
  }

  List<YoutubeVideoManifestStream> get streams {
    try {
      if (rawData["streams"] is List == false) {
        return [];
      }
      return (rawData["streams"] as List)
          .map((e) => YoutubeVideoManifestStream(e as Map))
          .toList()
          .cast<YoutubeVideoManifestStream>();
    } catch (e) {
      return [];
    }
  }

  static YoutubeVideoManifest create({
    String? special_type,
    List<YoutubeVideoManifestAudio>? audios,
    List<YoutubeVideoManifestVideo>? videos,
    List<YoutubeVideoManifestMuxed>? muxeds,
    List<YoutubeVideoManifestStream>? streams,
  }) {
    YoutubeVideoManifest youtubeVideoManifest = YoutubeVideoManifest({
      "@type": special_type,
      "audios": (audios != null)
          ? audios.map((res) => res.toJson()).toList().cast<Map>()
          : null,
      "videos": (videos != null)
          ? videos.map((res) => res.toJson()).toList().cast<Map>()
          : null,
      "muxeds": (muxeds != null)
          ? muxeds.map((res) => res.toJson()).toList().cast<Map>()
          : null,
      "streams": (streams != null)
          ? streams.map((res) => res.toJson()).toList().cast<Map>()
          : null,
    });

    return youtubeVideoManifest;
  }
}
