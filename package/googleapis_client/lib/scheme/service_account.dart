// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class ServiceAccount extends JsonScheme {

  
  ServiceAccount(super.rawData);
   
  static Map get defaultData {
    return {"@type":"serviceAccount","type":"service_account","project_id":"nod","private_key_id":"","private_key":"-----BEGIN PRIVATE KEY-----/FRxgbsPu7i-----END PRIVATE KEY-----\n","client_email":"mkkm","client_id":"117580","auth_uri":"https://o/oauth2/auth","token_uri":"https:/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_x509_cert_url":"","universe_domain":""};
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


  
  String? get type {
    try {
      if (rawData["type"] is String == false){
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get project_id {
    try {
      if (rawData["project_id"] is String == false){
        return null;
      }
      return rawData["project_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get private_key_id {
    try {
      if (rawData["private_key_id"] is String == false){
        return null;
      }
      return rawData["private_key_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get private_key {
    try {
      if (rawData["private_key"] is String == false){
        return null;
      }
      return rawData["private_key"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get client_email {
    try {
      if (rawData["client_email"] is String == false){
        return null;
      }
      return rawData["client_email"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get client_id {
    try {
      if (rawData["client_id"] is String == false){
        return null;
      }
      return rawData["client_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get auth_uri {
    try {
      if (rawData["auth_uri"] is String == false){
        return null;
      }
      return rawData["auth_uri"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get token_uri {
    try {
      if (rawData["token_uri"] is String == false){
        return null;
      }
      return rawData["token_uri"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get auth_provider_x509_cert_url {
    try {
      if (rawData["auth_provider_x509_cert_url"] is String == false){
        return null;
      }
      return rawData["auth_provider_x509_cert_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get client_x509_cert_url {
    try {
      if (rawData["client_x509_cert_url"] is String == false){
        return null;
      }
      return rawData["client_x509_cert_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get universe_domain {
    try {
      if (rawData["universe_domain"] is String == false){
        return null;
      }
      return rawData["universe_domain"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static ServiceAccount create({

    String? special_type,
    String? type,
    String? project_id,
    String? private_key_id,
    String? private_key,
    String? client_email,
    String? client_id,
    String? auth_uri,
    String? token_uri,
    String? auth_provider_x509_cert_url,
    String? client_x509_cert_url,
    String? universe_domain,
})  {
    ServiceAccount serviceAccount = ServiceAccount({
  
      "@type": special_type,
      "type": type,
      "project_id": project_id,
      "private_key_id": private_key_id,
      "private_key": private_key,
      "client_email": client_email,
      "client_id": client_id,
      "auth_uri": auth_uri,
      "token_uri": token_uri,
      "auth_provider_x509_cert_url": auth_provider_x509_cert_url,
      "client_x509_cert_url": client_x509_cert_url,
      "universe_domain": universe_domain,


  });


return serviceAccount;

      }
}