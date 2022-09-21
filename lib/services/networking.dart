import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  final url;

  Networking(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    String data = response.body;
    return jsonDecode(data);
  }
}
