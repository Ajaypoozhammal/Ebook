import 'dart:convert';


import 'package:http/http.dart';

import '../Modelclass/EbookModel.dart';
import 'Api client.dart';





class EbookApi {
  ApiClient apiClient = ApiClient();


  Future <List< EbookModel>> getEbook() async {
    String trendingpath = 'https://freebooks-api2.p.rapidapi.com/fetchEbooks/horror ';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return EbookModel.listFromJson(jsonDecode(response.body));
  }
}