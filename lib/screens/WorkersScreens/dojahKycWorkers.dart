import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dojah_kyc/flutter_dojah_kyc.dart';

class KycVerification {
  static Future<void> kycVerification(BuildContext context) async{

    const appId = "63986f81c3a43300361eb24b"; //your application ID
    const publicKey = "prod_pk_gadPAIUGDzSoiJIPLu4XpaN7y";
    
    final userData = {
      "first_name": "",
      "last_name": "",
      "dob": "",
      "residence_country": "Nigeria"
    };

    final configObj = {
      "debug": "true",
      // "mobile": true,
      // "otp": false,
      // "selfie": true,
      // "aml": false,
      "webhook": false, //Before you set webhook to true, Ensure you are subscribed to the webhook here https://api-docs.dojah.io/docs/subscribe-to-services
      "review_process": "Automatic",
      "pages": [
        // { "page": "phone-number", "config": { "verification": true } },
        // { "page": "government-data", "config": { "bvn": true, "nin": false, "dl": false, "mobile": false, "otp": false, "selfie": false } },

        { "page": "user-data", "config": { "enabled": true } },
        { "page": "countries", "config": { "enabled": false } },
        // { "page": "business-data", "config": {"cac": true, "tin": true, "verification": true} },
        // { "page": "business-id" },
        { "page": "selfie", "config": { "verification": true }},
        { "page": "address", "config": { "verification": true }},
        // { "page": 'id', "config": { "passport": true, "dl": true , "nin": true, "voter":true, "custom": true } },
      ]
    };
    
    final metaData = {
      "user_id": "81828289191919193882",
    };

    DojahKYC _dojahKCY;
    //Use your appId and publicKey
    _dojahKCY = DojahKYC(
      appId: appId,
      publicKey: publicKey,
      type: "custom",
      userData: userData,
      // metaData: metaData,
      // govData: govData,
      config: configObj,
      
    );

    print(json.encode(configObj));
    print(json.encode(configObj));
    print(userData);
    print(configObj);
    _dojahKCY.open(
      context,
      onSuccess: (result) => print(result),
      onClose: (close) => print('Widget Closed'),
      onError: (error) => print(error)
    );
  }
} 

