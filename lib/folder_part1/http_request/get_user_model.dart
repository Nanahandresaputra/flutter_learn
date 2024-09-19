import 'dart:convert';
import 'package:http/http.dart' as http;

class GetUserModel {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  GetUserModel(
      {this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory GetUserModel.userData(Map<String, dynamic> object) {
    return GetUserModel(
      id: object['id'].toString(),
      email: object['email'],
      firstName: object['first_name'],
      lastName: object['last_name'],
      avatar: object['avatar'],
    );
  }

  static Future<GetUserModel> connectToApi(String id) async {
    Uri baseUrl = Uri.https('reqres.in', '/api/users/$id');
    var apiResult = await http.get(baseUrl);
    var jsonObject = json.decode(apiResult.body);
    var dataUser = (jsonObject as Map<String, dynamic>)['data'];

    return GetUserModel.userData(dataUser);
  }
}
