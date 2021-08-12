import 'dart:convert';
import 'dart:html';

import 'package:errors/errors.dart';
import 'package:http/http.dart' as http;

const String SERVER_FAILURE_MESSAGE = "Server Failure";
const String FILE_NOT_FOUND = "File not found";
const String UNAUTHORIZED_ACCESS = "Unauthorized Access";
const String NO_INTERNET = "Please check your internet connection";
const String JSON_PARSING_ERROR = "There was an error parsing data";
const String INVALID_CERTIFICATE = "Invalid Server Certificate";

class APIService {
  ///Calls the specified endpoint
  ///
  ///Returns data if success in format [Future<Map<String, dynamic>>]
  ///
  ///Throws an [Error] for all error codes.
  ///
  static Future<Map<String, dynamic>> locationSync(String endpoint) async {
    var request = http.Request('GET', Uri.parse(endpoint));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      var decoded = jsonDecode(res);
      return decoded;
    } else {
      print(response.reasonPhrase);
    }
  }

  static Future<Map<String, dynamic>> getEndpointData(String endpoint) async {
    print("Getting data for Endpoint $endpoint");
    var url = Uri.parse(endpoint);

    final response = await http.get(url,
        headers: {"Content-Type": 'application/json'}).catchError((error) {
      throw Error(message: NO_INTERNET);
    });

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        if (data != null) return data;
      } catch (e) {
        throw Error(message: e.toString());
        // throw Error(message: JSON_PARSING_ERROR);
      }
    }
    throw Error(message: APIService._mapErrorToMessage(response));
  }

  static Future<Map<String, dynamic>> postEndpointData(String endpoint,
      {Map<String, dynamic> body, Headers headers}) async {
    print("Posting data for Endpoint $endpoint");
    print("Body ${jsonEncode(body)}");
    var url = Uri.parse(endpoint);

    final response = await http
        .post(url,
            headers: {"Content-Type": 'application/json; charset=UTF-8'},
            body: jsonEncode(body) ?? "")
        .catchError((error) {
      throw Error(message: NO_INTERNET);
    });

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        if (data != null) return data;
      } catch (e) {
        throw Error(message: e.toString());
        // throw Error(message: JSON_PARSING_ERROR);
      }
    }
    throw Error(message: APIService._mapErrorToMessage(response));
  }

  // static Future<Map<String, dynamic>> postEndpointHsrData(
  //     String endpoint, String body) async {
  //   print("Posting data for Endpoint $endpoint");
  //   print("Body $body");
  //   var url = Uri.parse(endpoint);
  //
  //   final response = await http
  //       .post(url,
  //           headers: {"Content-Type": 'application/json; charset=UTF-8'},
  //           body: body ?? "")
  //       .catchError((error) {
  //     throw Error(message: NO_INTERNET);
  //   });
  //
  //   if (response.statusCode == 200) {
  //     try {
  //       final Map<String, dynamic> data = json.decode(response.body);
  //       if (data != null) return data;
  //     } catch (e) {
  //       throw Error(message: e.toString());
  //       // throw Error(message: JSON_PARSING_ERROR);
  //     }
  //   }
  //   throw Error(message: APIService._mapErrorToMessage(response));
  // }

  static Future<Map<String, dynamic>> postEndpointDataWithBody(
      String endpoint, dynamic body) async {
    print("Posting data for Endpoint $endpoint");
    print("Body $body");
    var url = Uri.parse(endpoint);

    final response = await http
        .post(
      url,
      headers: {
        "content-type": 'application/json; charset=UTF-8',
      },
      body: body,
    )
        .catchError((error) {
      throw Error(message: NO_INTERNET);
    });

    if (response.statusCode == 200) {
      print("response.body ${response.body}");
      print(json.decode(response.body));
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        if (data != null) return data;
      } catch (e) {
        throw Error(message: e.toString());
        // throw Error(message: JSON_PARSING_ERROR);
      }
    }
    throw Error(message: APIService._mapErrorToMessage(response));
  }

  static Future<Map<String, dynamic>> postEndpointDataMtp(
      String endpoint, dynamic body) async {
    print("Posting data for Endpoint $endpoint");
    print("Body ${jsonEncode(body)}");
    var url = Uri.parse(endpoint);
    String jsonString = json.encode(body);
    String encodedbody = base64.encode(utf8.encode(jsonString));
    final response = await http
        .post(url,
            headers: {"Content-Type": 'application/json; charset=UTF-8'},
            body: encodedbody ?? "")
        .catchError((error) {
      throw Error(message: NO_INTERNET);
    });

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        if (data != null) return data;
      } catch (e) {
        throw Error(message: e.toString());
        // throw Error(message: JSON_PARSING_ERROR);
      }
    }
    throw Error(message: APIService._mapErrorToMessage(response));
  }

  static String _mapErrorToMessage(http.Response response) {
    switch (response.statusCode.toInt()) {
      case 404:
        return FILE_NOT_FOUND;
      case 401:
        return UNAUTHORIZED_ACCESS;
      case 500:
        return SERVER_FAILURE_MESSAGE;
      default:
        return "Unexpected Error";
    }
  }
}
