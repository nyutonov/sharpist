import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'http_result.dart';

class ApiProvider {
  Duration durationTimeout = const Duration(seconds: 30);

  Future<HttpResult> postRequest(url, body) async {
    if (kDebugMode) {
      print(url);
      print(body);
    }

    final dynamic headers = await getReqHeader();
    try {
      http.Response response = await http
          .post(
            Uri.parse(url),
            headers: headers,
            body: body,
          )
          .timeout(durationTimeout);
      return result(response);
    } on TimeoutException catch (_) {
      return HttpResult(
        isSuccess: false,
        status: -1,
        result: null,
      );
    } on SocketException catch (_) {
      return HttpResult(
        isSuccess: false,
        status: -2,
        result: null,
      );
    }
  }

  Future<HttpResult> putRequest(url, body) async {
    if (kDebugMode) {
      print(url);
      print(body);
    }
    final dynamic headers = await getReqHeader();
    try {
      http.Response response = await http
          .put(
            Uri.parse(url),
            headers: headers,
            body: body,
          )
          .timeout(durationTimeout);
      return result(response);
    } on TimeoutException catch (_) {
      return HttpResult(
        isSuccess: false,
        status: -1,
        result: null,
      );
    } on SocketException catch (_) {
      return HttpResult(
        isSuccess: false,
        status: -2,
        result: null,
      );
    }
  }

  Future<HttpResult> getRequest(url) async {
    final dynamic headers = await getReqHeader();
    if (kDebugMode) {
      print(url);
      print(headers);
    }

    try {
      http.Response response = await http
          .get(
            Uri.parse(url),
            headers: headers,
          )
          .timeout(durationTimeout);
      return result(response);
    } on TimeoutException catch (_) {
      return HttpResult(
        isSuccess: false,
        status: -1,
        result: null,
      );
    } on SocketException catch (_) {
      return HttpResult(
        isSuccess: false,
        status: -2,
        result: null,
      );
    }
  }

  HttpResult result(http.Response response) {
    if (kDebugMode) {
      String data = response.body.length > 150
          ? response.body.substring(0, 150)
          : response.body;
      print(data);
    }
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return HttpResult(
        isSuccess: true,
        status: response.statusCode,
        result: json.decode(utf8.decode(response.bodyBytes)),
      );
    } else {
      try {
        return HttpResult(
          isSuccess: false,
          status: response.statusCode,
          result: response.bodyBytes.isEmpty
              ? ""
              : json.decode(utf8.decode(response.bodyBytes)),
        );
      } catch (_) {
        return HttpResult(
          isSuccess: false,
          status: response.statusCode,
          result: response.body,
        );
      }
    }
  }

  getReqHeader() {
    return {
      "Content-Type": "application/json",
    };
  }
}
