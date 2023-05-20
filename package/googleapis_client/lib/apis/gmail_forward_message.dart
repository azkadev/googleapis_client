// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class GmailForwardMessage extends JsonApis {

  
  GmailForwardMessage(super.rawData);
   
  static Map get defaultData {
    return {"@type":"gmailForwardMessage","email_id":"email@gmail.com","from_email_id":"","message_id":""};
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


  
  String? get from_email_id {
    try {
      if (rawData["from_email_id"] is String == false){
        return null;
      }
      return rawData["from_email_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get message_id {
    try {
      if (rawData["message_id"] is String == false){
        return null;
      }
      return rawData["message_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static GmailForwardMessage create({

    String? special_type,
    String? email_id,
    String? from_email_id,
    String? message_id,
})  {
    GmailForwardMessage gmailForwardMessage = GmailForwardMessage({
  
      "@type": special_type,
      "email_id": email_id,
      "from_email_id": from_email_id,
      "message_id": message_id,


  });


return gmailForwardMessage;

      }
}