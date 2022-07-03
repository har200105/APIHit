import 'package:http/http.dart' as http;

Future apiHit(String request, String url, String path,
    [String? token, Map<String, dynamic>? body]) async {
  if (request == "GET") {
    final Uri uri = Uri.parse(url + "/$path");
    final http.Response response = await http.get(uri, headers: {
      "Content-type": "application/json",
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Authorization": token != null ? 'Bearer $token' : ""
    });

    if (response.statusCode == 201) {
      return response.body;
    }
  } else if (request == "POST") {
    final Uri uri = Uri.parse(url + "/$path");
    final http.Response response = await http.post(uri,
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": token != null ? 'Bearer $token' : ""
        },
        body: body);

    if (response.statusCode == 201) {
      return response.body;
    }
  } else if (request == "PUT") {
    final Uri uri = Uri.parse(url + "/$path");
    final http.Response response = await http.put(uri,
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": token != null ? 'Bearer $token' : ""
        },
        body: body);

    if (response.statusCode == 201) {
      return response.body;
    }
  } else if (request == "DELETE") {
    final Uri uri = Uri.parse(url + "/$path");
    final http.Response response = await http.delete(uri,
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Authorization": token != null ? 'Bearer $token' : ""
        },
        body: body);

    if (response.statusCode == 201) {
      return response.body;
    }
  }
}
