import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHandler{
  final String url = "https://api.covid19india.org/data.json";
  String data;
  Future getData() async{
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      data = response.body;
      return jsonDecode(data);
    }else{
      return response.statusCode;
    }
  }

}