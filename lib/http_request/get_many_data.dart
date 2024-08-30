import 'package:http/http.dart' as http;
import 'dart:convert';

class GetManyData {
  String? id;
  String? name;
  String? email;
  String? avatar;

  GetManyData({this.id, this.name, this.email, this.avatar});

  factory GetManyData.getManyData(Map<String, dynamic> json) {
    return GetManyData(
      id: json['id'].toString(),
      name: '${json['first_name']} ${json['last_name']}',
      email: json['email'],
      avatar: json['avatar'],
    );
  }

  static Future<List<GetManyData>> connectApi(String page) async {
    Uri baseUrl = Uri.https('reqres.in', 'api/users', {'page': page});
    var apiResult = await http.get(baseUrl);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUsers = (jsonObject as Map<String, dynamic>)['data'];

    List<GetManyData> usersData = [];
    for (int i = 0; i < listUsers.length; i++) {
      usersData.add(GetManyData.getManyData(listUsers[i]));
    }

    return usersData;
  }
}
