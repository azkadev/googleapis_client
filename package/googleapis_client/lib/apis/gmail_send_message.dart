// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class GmailSendMessage extends JsonApis {

  
  GmailSendMessage(super.rawData);
   
  static Map get defaultData {
    return {"@type":"gmailSendMessage","email_id":"email@gmail.com","text":""};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get email_id {
    try {
      if (rawData["email_id"] is String == false){
        return null;
      }
      return rawData["email_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get text {
    try {
      if (rawData["text"] is String == false){
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static GmailSendMessage create({

    String? special_type,
    String? email_id,
    String? text,
})  {
    GmailSendMessage gmailSendMessage = GmailSendMessage({
  
      "@type": special_type,
      "email_id": email_id,
      "text": text,


  });


return gmailSendMessage;

      }
}