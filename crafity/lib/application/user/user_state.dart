part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const UserState._();
  const factory UserState({
    @required EmailAddress email,
    @required Password password,
    @required PhoneNumber phoneNumber,
    @required bool isSubmitting,
    @required Option<Either<String, Unit>> failureOrSuccessOption,
  }) = _UserState;

  factory UserState.empty() {
    return UserState(
      email: EmailAddress(''),
      password: Password(password: ''),
      phoneNumber: PhoneNumber(phoneNumber: ''),
      isSubmitting: false,
      failureOrSuccessOption: none(),
    );
  }

  bool get isFormValid =>
      email.isValid && password.isValid && password.isConfirmPswValid;
}
