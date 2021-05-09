import 'package:crafity/domain/main/value_objects.dart';
import 'package:crafity/domain/user/domains.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

extension FirebaseUserX on fb.User {
  Customer toDomain() => Customer(
        uniqueId: UniqueId(uid),
        name: UserName(displayName) ?? UserName.alternate(email),
        photo: Photo(photoURL),
      );
}
