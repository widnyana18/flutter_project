import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:crafity/domain/user/domains.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(UserRepository userRepository)
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(UserState.empty());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith.call(
          failureOrSuccessOption: none(),
          email: EmailAddress(e.email),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith.call(
          failureOrSuccessOption: none(),
          password: Password(
            password: e.password ?? state.password.getOrCrash(),
            confirmPassword: e.confirmPsw,
          ),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith.call(
          failureOrSuccessOption: none(),
          phoneNumber:
              PhoneNumber(phoneNumber: e.phoneNumber, smsCode: e.smsCode),
        );
      },
      createAccountButton: (e) async* {
        yield* _mapLoginAndRegisterEmailToState(_userRepository.signUp);
      },
      loginWithEmailButton: (e) async* {
        yield* _mapLoginAndRegisterEmailToState(
            _userRepository.signInWithEmailPsw);
      },
      loginWithGoogleButton: (e) async* {
        yield* _mapLoginProviderOrDeleteUser(_userRepository.signInWithGoogle);
      },
      loginWithFacebookButton: (e) async* {
        yield* _mapLoginProviderOrDeleteUser(
            _userRepository.signInWithFacebook);
      },
      reauthenticateUserButton: (e) async* {
        yield* _mapReAuthUserOrEditPasswordToState(
            _userRepository.reauthenticateUser);
      },
      sendLinkToEmailButton: (e) async* {
        yield* _mapSendLinkAndEditEmailToState(_userRepository.sendLinkToEmail);
      },
      updateEmailButton: (e) async* {
        yield* _mapSendLinkAndEditEmailToState(_userRepository.editEmail);
      },
      updatePasswordButton: (e) async* {
        yield* _mapReAuthUserOrEditPasswordToState(
            _userRepository.changePassword);
      },
      registerPhoneButton: (e) async* {
        yield* _mapRegisterPhoneNumberToState();
      },
      verifyPhoneButton: (e) async* {
        yield* _mapVerifyPhoneNumberToState(e.smsCode);
      },
      createCreditCardButton: (e) async* {
        yield* _mapRegisterCreditCardToState();
      },
      deleteAccount: (e) async* {
        yield* _mapLoginProviderOrDeleteUser(_userRepository.deleteUser);
      },
    );
  }

  Stream<UserState> _mapLoginAndRegisterEmailToState(
    Future<Either<String, Unit>> Function({
      @required EmailAddress email,
      @required Password password,
    })
        repo,
  ) async* {
    Either<String, Unit> authResult;

    if (state.isFormValid) {
      yield state.copyWith.call(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      authResult = await repo(email: state.email, password: state.password);
    }

    yield state.copyWith.call(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(authResult),
    );
  }

  Stream<UserState> _mapLoginProviderOrDeleteUser(
    Future<Either<String, Unit>> Function() repo,
  ) async* {
    yield state.copyWith.call(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    yield state.copyWith.call(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(await repo()),
    );
  }

  Stream<UserState> _mapReAuthUserOrEditPasswordToState(
    Future<Either<String, Unit>> Function({@required Password password}) repo,
  ) async* {
    Either<String, Unit> authResult;
    final pswValid = state.password.isValid;

    if (pswValid) {
      yield state.copyWith.call(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      authResult = await repo(password: state.password);
    }

    yield state.copyWith.call(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(authResult),
    );
  }

  Stream<UserState> _mapSendLinkAndEditEmailToState(
    Future<Either<String, Unit>> Function({@required EmailAddress email}) repo,
  ) async* {
    Either<String, Unit> authResult;
    final emailValid = state.email.isValid;

    if (emailValid) {
      yield state.copyWith.call(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      authResult = await repo(email: state.email);
    }

    yield state.copyWith.call(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(authResult),
    );
  }

  Stream<UserState> _mapRegisterPhoneNumberToState() async* {
    Either<String, Unit> authResult;
    final phoneValid = state.phoneNumber.isValid;

    if (phoneValid) {
      yield state.copyWith.call(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      authResult = await _userRepository.registerPhoneNumber(
          phoneNumber: state.phoneNumber);
    }

    yield state.copyWith.call(
      phoneNumber: PhoneNumber(phoneNumber: '', smsCode: ''),
      isSubmitting: false,
      failureOrSuccessOption: optionOf(authResult),
    );
  }

  Stream<UserState> _mapVerifyPhoneNumberToState(String smsCode) async* {
    Either<String, Unit> authResult;
    final phoneValid = state.phoneNumber.isValid;

    if (phoneValid) {
      yield state.copyWith.call(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      authResult =
          await _userRepository.verifyPhoneNumber(smsCode: state.phoneNumber);
    }

    yield state.copyWith.call(
      phoneNumber: PhoneNumber(phoneNumber: '', smsCode: ''),
      isSubmitting: false,
      failureOrSuccessOption: optionOf(authResult),
    );
  }

  Stream<UserState> _mapRegisterCreditCardToState() async* {}
}
