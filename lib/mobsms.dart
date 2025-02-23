import 'dart:async';

import 'package:flutter/services.dart';

class Result {
  dynamic? ret;
  dynamic? err;

  Result([this.ret, this.err]);

  static buildResult(Map<dynamic, dynamic>? response) {
    return Result(response!["ret"], response["err"]);
  }
}

class Smssdk {
  static const MethodChannel _channel = const MethodChannel('com.mob.smssdk');

  static Future<Result> getTextCode(
      String phoneNumber, String zone, String tempCode) async {
    Map args = {"phoneNumber": phoneNumber, "zone": zone, "tempCode": tempCode};

    Map<dynamic, dynamic>? response =
    await _channel.invokeMethod<Map<dynamic, dynamic>>('getTextCode', args);
    return Result.buildResult(response);
  }

  static Future<Result> getVoiceCode(String phoneNumber, String zone) async {
    Map args = {"phoneNumber": phoneNumber, "zone": zone};

    Map<dynamic, dynamic>? response =
    await _channel.invokeMethod<Map<dynamic, dynamic>>('getVoiceCode', args);
    return Result.buildResult(response);
  }

  static Future<Result> commitCode(
      String phoneNumber,
      String zone,
      String code,
      ) async {
    Map args = {"phoneNumber": phoneNumber, "zone": zone, "code": code};

    Map<dynamic, dynamic>? response =
    await _channel.invokeMethod<Map<dynamic, dynamic>>('commitCode', args);
    return Result.buildResult(response);
  }

  static Future<Result> getSupportedCountries() async {
    Map<dynamic, dynamic>? response = await _channel
        .invokeMethod<Map<dynamic, dynamic>>('getSupportedCountries');

    return Result.buildResult(response);
  }

  static Future<Result> getFriends() async {
    Map<dynamic, dynamic>? response =
    await _channel.invokeMethod<Map<dynamic, dynamic>>('getFriends');

    return Result.buildResult(response);
  }

  static Future<Result> submitUserInfo(String uid, String nickname,
      String avatar, String zone, String phoneNumber) async {
    Map userInfo = {
      "country": zone,
      "phone": phoneNumber,
      "uid": uid,
      "nickname": nickname,
      "avatar": avatar
    };

    Map<dynamic, dynamic>? response = await _channel
        .invokeMethod<Map<dynamic, dynamic>>('submitUserInfo', userInfo);
    return Result.buildResult(response);
  }

  static Future<Result> getVersion() async {
    Map<dynamic, dynamic>? response =
    await _channel.invokeMethod<Map<dynamic, dynamic>>('getVersion');
    return Result.buildResult(response);
  }

  static Future<Result> enableWarn(bool enableWarn) async {
    Map args = {"isWarn": enableWarn};

    Map<dynamic, dynamic>? response =
    await _channel.invokeMethod<Map<dynamic, dynamic>>('enableWarn', args);

    return Result.buildResult(response);
  }
}
