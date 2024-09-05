import 'dart:convert';


import 'package:http/http.dart';

import '../Modelclass/EbookModel.dart';
import '../Modelclass/SummeryModel.dart';
import 'Api client.dart';





class SummeryApi {
  ApiClient apiClient = ApiClient();


  Future < SummeryModel> getSummery() async {
    String trendingpath = 'https://freebooks-api2.p.rapidapi.com/getBookSummary/d15821dc5a0420dd30d78c112d47815e  ';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return SummeryModel.fromJson(jsonDecode(response.body));
  }
}