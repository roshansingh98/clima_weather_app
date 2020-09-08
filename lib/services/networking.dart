import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final url;

  NetworkHelper({this.url});

  Future getData() async {
    http.Response response = await http.get(url);

    int code = response.statusCode;

    if (code == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(code);
    }
  }
}
