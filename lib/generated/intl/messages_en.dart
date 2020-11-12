// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(code) => "Received invalid status code:${code}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "CONNECT_TIMEOUT" : MessageLookupByLibrary.simpleMessage("Connection request timeout"),
    "ERR409" : MessageLookupByLibrary.simpleMessage("Error due to a conflict"),
    "ERR500" : MessageLookupByLibrary.simpleMessage("Internal Server Error"),
    "ERR503" : MessageLookupByLibrary.simpleMessage("Service unavailable"),
    "ERR_CANCEL" : MessageLookupByLibrary.simpleMessage("Request cancelled"),
    "ERR_DEFAULT" : m0,
    "formatException" : MessageLookupByLibrary.simpleMessage("Format response error"),
    "noInternetConnection" : MessageLookupByLibrary.simpleMessage("No internet connection"),
    "requestNotFound" : MessageLookupByLibrary.simpleMessage("Request not found"),
    "request_timeout" : MessageLookupByLibrary.simpleMessage("Send timeout in connection with API server"),
    "unableToProcess" : MessageLookupByLibrary.simpleMessage("Unable to process the data"),
    "unauthorisedRequest" : MessageLookupByLibrary.simpleMessage("Unauthorised Request"),
    "unexpectedError" : MessageLookupByLibrary.simpleMessage("Unexpected error occurred")
  };
}
