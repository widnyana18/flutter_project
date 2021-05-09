part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.emailChanged(String email) = EmailChanged;
  const factory UserEvent.passwordChanged(
      {String password, String confirmPsw}) = PasswordChanged;
  const factory UserEvent.phoneNumberChanged(
      {String phoneNumber, String smsCode}) = PhoneNumberChanged;
  const factory UserEvent.createAccountButton() = CreateAccountButton;
  const factory UserEvent.loginWithEmailButton() = LoginWithEmailButton;
  const factory UserEvent.loginWithGoogleButton() = LoginWithGoogleButton;
  const factory UserEvent.loginWithFacebookButton() = LoginWithFacebookButton;
  const factory UserEvent.reauthenticateUserButton() = ReauthenticateUserButton;
  const factory UserEvent.sendLinkToEmailButton() = SendLinkToEmailButton;
  const factory UserEvent.updateEmailButton() = UpdateEmailButton;
  const factory UserEvent.updatePasswordButton() = UpdatePasswordButton;
  const factory UserEvent.registerPhoneButton() = RegisterPhoneButton;
  const factory UserEvent.verifyPhoneButton({String smsCode}) =
      VerifyPhoneButton;
  const factory UserEvent.createCreditCardButton() = CreateCreditCardButton;
  const factory UserEvent.deleteAccount() = DeleteAccount;
}
