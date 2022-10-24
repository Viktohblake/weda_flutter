import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future<dynamic> getData() async {
    Uri urlAsUri = Uri.parse(url);
    Response response = await get(urlAsUri);

    String data = response.body;

    var decodedData = jsonDecode(data);
    return decodedData;
  }

}
