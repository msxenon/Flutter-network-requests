import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_net_requests_handler/generated/l10n.dart';


String getDioException(error) {
  if (error is Exception) {
    try {
      String networkExceptions;
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.CANCEL:
            networkExceptions = S().ERR_CANCEL;
            break;
          case DioErrorType.CONNECT_TIMEOUT:
            networkExceptions = S().request_timeout;
            break;
          case DioErrorType.DEFAULT:
            networkExceptions = S().noInternetConnection;
            break;
          case DioErrorType.RECEIVE_TIMEOUT:
            networkExceptions = S().request_timeout;
            break;
          case DioErrorType.RESPONSE:
            switch (error.response.statusCode) {
              case 400:
                networkExceptions = S().unauthorisedRequest;
                break;
              case 401:
                networkExceptions = S().unauthorisedRequest;
                break;
              case 403:
                networkExceptions = S().unauthorisedRequest;
                break;
              case 404:
                networkExceptions = S().requestNotFound;
                break;
              case 409:
                networkExceptions = S().ERR409;
                break;
              case 408:
                networkExceptions = S().request_timeout;
                break;
              case 500:
                networkExceptions = S().ERR500;
                break;
              case 503:
                networkExceptions = S().ERR503;
                break;
              default:
                var responseCode = error.response.statusCode;
                networkExceptions = S().ERR_DEFAULT(responseCode);
            }
            break;
          case DioErrorType.SEND_TIMEOUT:
            networkExceptions = S().request_timeout;
            break;
        }
      } else if (error is SocketException) {
        networkExceptions = S().request_timeout;
      } else {
        networkExceptions = S().unexpectedError;
      }
      return networkExceptions;
    } on FormatException catch (e) {
      return S().formatException;
    } catch (_) {
      return  S().unexpectedError;
    }
  } else {
    if (error.toString().contains("is not a subtype of")) {
      return S().unableToProcess;
    } else {
      return S().unexpectedError;
    }
  }
}
