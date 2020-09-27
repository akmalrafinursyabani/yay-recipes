part of 'models.dart';

// Extensions to Firebase

extension FirebaseUserExtension on auth.User {
  User convertToUser({
    String name = "No Name",
  }) =>
      User(
        this.uid,
        this.email,
        name: name,
      );

  Future<User> fromFirestore() async => await UserServices.getUser(this.uid);
}

class User extends Equatable {
  final String id;
  final String name;
  final String email;

  User(this.id, this.email, {this.name});

  @override
  // TODO: implement props
  List<Object> get props => [id, email, name];
}
