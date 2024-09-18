import 'package:flutter/material.dart';

class DocDocumentLearn extends StatelessWidget {
  final DocDocument docDocument = DocDocument(name: 'Mark');

  @override
  Widget build(BuildContext context) {
    print(docDocument.name);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Doc Document',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: docDocument,
          )),
    );
  }
}

/// ini adalah doc document, didalamnya ada *class DocDocumentLearn* yang menampilkan user
///
/// * terdapat field data [user]
///
/// * ada paremeter [name], [role], [photo]
///
/// * parameter bersifat opsional
///
/// contoh
///
/// ```
///  final DocDocument docDocument = DocDocument(
///       name: 'Mark',
///       role: 'Admin',
///       photo: 'https://i.pinimg.com/564x/a2/de/39/a2de3954697c636276192afea0a6f661.jpg'
///     );
/// ```
class DocDocument extends StatelessWidget {
  /// ini field untuk nama user nilai default nya 'No Name'
  final String name;

  /// ini field untuk role user nilai default nya 'no role'
  final String role;

  /// ini field untuk photo user nilai default nya 'https://static.vecteezy.com/system/resources/previews/036/594/092/non_2x/man-empty-avatar-photo-placeholder-for-social-networks-resumes-forums-and-dating-sites-male-and-female-no-photo-images-for-unfilled-user-profile-free-vector.jpg'

  final String photo;

  DocDocument(
      {this.name = 'No Name',
      this.role = 'no role',
      this.photo =
          'https://static.vecteezy.com/system/resources/previews/036/594/092/non_2x/man-empty-avatar-photo-placeholder-for-social-networks-resumes-forums-and-dating-sites-male-and-female-no-photo-images-for-unfilled-user-profile-free-vector.jpg'});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            photo,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 5,
        ),
        Text('[$role]')
      ],
    );
  }
}
