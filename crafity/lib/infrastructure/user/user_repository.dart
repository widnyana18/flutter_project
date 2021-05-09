import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:crafity/main.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:crafity/domain/user/domains.dart';
import 'package:crafity/infrastructure/user/user_repo_mapper.dart';

class UserRepository extends UserRepoFacade {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  final FacebookAuth _facebookAuth = FacebookAuth.instance;

  String verificationId;
  ConfirmationResult result;
  AuthCredential _authCredential;
  String _password;

  @override
  Future<Either<String, Unit>> signInWithEmailPsw({
    @required EmailAddress email,
    @required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final pswStr = password.getOrCrash();
    try {
      await _firebaseAuth
          .signInWithEmailAndPassword(
        email: emailStr,
        password: pswStr,
      )
          .then((user) {
        _authCredential = user.credential;
      });
      _password = pswStr;
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential).then((user) {
        getSignInUser();
        _authCredential = user.credential;
      });
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  // @override
  // Future<Either<String, Unit>> signInWithFacebookWeb() async {
  //   final provider = FacebookAuthProvider();
  //   provider.addScope(scope);
  //   final credential = FacebookAuthProvider.credential(result.token);
  //   try {
  //     await _firebaseAuth.signInWithCredential(credential);
  //   } on FirebaseAuthException catch (e) {
  //     return left(userError(e.code));
  //   }
  // }

  @override
  Future<Either<String, Unit>> signInWithFacebook() async {
    try {
      final result = await _facebookAuth.login();
      final credential = FacebookAuthProvider.credential(result.token);

      await _firebaseAuth
          .signInWithCredential(credential)
          .then((user) => _authCredential = user.credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> signUp(
      {@required EmailAddress email, @required Password password}) async {
    try {
      final emailStr = email.getOrCrash();
      final pswStr = password.getOrCrash();

      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: pswStr,
      );
      await result.user.sendEmailVerification();
      _authCredential = result.credential;
      _password = pswStr;
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> registerPhoneNumber({
    @required PhoneNumber phoneNumber,
  }) async {
    try {
      final context = GetContext().context;
      final phoneStr = phoneNumber.getOrCrash();

      if (ResponsiveLayout.isLargeScreen(context)) {
        final recaptcha = RecaptchaVerifier(
          onError: (e) => throw e.message,
          onSuccess: () => print('success to authenticate recaptcha'),
        );
        final user = _firebaseAuth.currentUser;

        result = await user.linkWithPhoneNumber(phoneStr, recaptcha);
        verificationId = result.verificationId;
        print('verificationId: $verificationId');
        return right(unit);
      } else {
        await _firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneStr,
          verificationCompleted: (credential) {
            print('success to verification || credential: $credential');
          },
          verificationFailed: (error) => throw error.message,
          codeSent: (verifyId, [int token]) {
            print('code success to send || verificationId: $verifyId');
            verificationId = verifyId;
          },
          codeAutoRetrievalTimeout: (newId) {
            print('retriev code success || verificationId: $newId');
            verificationId = newId;
          },
        );
        return right(unit);
      }
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> verifyPhoneNumber({PhoneNumber smsCode}) async {
    try {
      final context = GetContext().context;
      final smsStr = smsCode.getOrCrash();
      if (ResponsiveLayout.isLargeScreen(context)) {
        await result.confirm(smsStr);
        return right(unit);
      } else {
        final user = _firebaseAuth.currentUser;
        final phoneCredential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsStr,
        );

        await user.linkWithCredential(phoneCredential);
        return right(unit);
      }
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    } finally {
      print('phone number: ${_firebaseAuth.currentUser.phoneNumber}');
    }
  }

  @override
  Future<Either<String, Unit>> sendLinkToEmail({
    @required EmailAddress email,
  }) async {
    try {
      final emailStr = email.getOrCrash();
      await _firebaseAuth.sendPasswordResetEmail(email: emailStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> reauthenticateUser({Password password}) async {
    try {
      final pswStr = password.getOrCrash();
      final email = _firebaseAuth.currentUser.email;
      final credential =
          EmailAuthProvider.credential(email: email, password: pswStr);

      await _firebaseAuth.currentUser.reauthenticateWithCredential(
          pswStr.isEmpty ? _authCredential : credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> editEmail({@required EmailAddress email}) async {
    try {
      final emailStr = email.getOrCrash();
      final user = _firebaseAuth.currentUser;

      await user.verifyBeforeUpdateEmail(emailStr);
      await user.updateEmail(emailStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> changePassword(
      {@required Password password}) async {
    try {
      final pswStr = password.getOrCrash();
      await _firebaseAuth.currentUser.updatePassword(pswStr);
      _password = pswStr;
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> editPhoneNumber({String smsCode}) async {
    try {
      final user = _firebaseAuth.currentUser;
      final phoneCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      ) as PhoneAuthCredential;

      await user.updatePhoneNumber(phoneCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Either<String, Unit>> deleteUser() async {
    try {
      await reauthenticateUser();
      await _firebaseAuth.currentUser.delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(userError(e.code));
    }
  }

  @override
  Future<Option<Customer>> getSignInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signOut() async {
    await Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.disconnect(),
      _facebookAuth.logOut(),
    ]);
  }
}
