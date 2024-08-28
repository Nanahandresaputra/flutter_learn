import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResultModel {
  String? id;
  String? name;
  String? job;
  String? createdAt;

  PostResultModel({this.id, this.name, this.job, this.createdAt});

  factory PostResultModel.createPostResultModel(Map<String, dynamic> object) {
    return PostResultModel(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        createdAt: object['createdAt']);
  }

  static Future<PostResultModel> connectApi(String name, String job) async {
    Uri baseUrl = Uri.https('reqres.in', 'api/users');

    var apiResult = await http.post(baseUrl, body: {"name": name, "job": job});

    var jsonObject = json.decode(apiResult.body);

    return PostResultModel.createPostResultModel(jsonObject);
  }
}
