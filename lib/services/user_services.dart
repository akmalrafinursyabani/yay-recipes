part of 'services.dart';

class UserServices {
  static CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection("users");

  static Future<void> updateUser(User user) async {
    _collectionReference.doc(user.id).set({
      "email": user.email,
      "name": user.name,
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _collectionReference.doc(id).get();

    return User(
      id,
      snapshot.data()['email'],
      name: snapshot.data()['name'],
    );
  }
}
