// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged({String password, String confirmPsw}) {
    return PasswordChanged(
      password: password,
      confirmPsw: confirmPsw,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged({String phoneNumber, String smsCode}) {
    return PhoneNumberChanged(
      phoneNumber: phoneNumber,
      smsCode: smsCode,
    );
  }

// ignore: unused_element
  CreateAccountButton createAccountButton() {
    return const CreateAccountButton();
  }

// ignore: unused_element
  LoginWithEmailButton loginWithEmailButton() {
    return const LoginWithEmailButton();
  }

// ignore: unused_element
  LoginWithGoogleButton loginWithGoogleButton() {
    return const LoginWithGoogleButton();
  }

// ignore: unused_element
  LoginWithFacebookButton loginWithFacebookButton() {
    return const LoginWithFacebookButton();
  }

// ignore: unused_element
  ReauthenticateUserButton reauthenticateUserButton() {
    return const ReauthenticateUserButton();
  }

// ignore: unused_element
  SendLinkToEmailButton sendLinkToEmailButton() {
    return const SendLinkToEmailButton();
  }

// ignore: unused_element
  UpdateEmailButton updateEmailButton() {
    return const UpdateEmailButton();
  }

// ignore: unused_element
  UpdatePasswordButton updatePasswordButton() {
    return const UpdatePasswordButton();
  }

// ignore: unused_element
  RegisterPhoneButton registerPhoneButton() {
    return const RegisterPhoneButton();
  }

// ignore: unused_element
  VerifyPhoneButton verifyPhoneButton({String smsCode}) {
    return VerifyPhoneButton(
      smsCode: smsCode,
    );
  }

// ignore: unused_element
  CreateCreditCardButton createCreditCardButton() {
    return const CreateCreditCardButton();
  }

// ignore: unused_element
  DeleteAccount deleteAccount() {
    return const DeleteAccount();
  }
}

/// @nodoc
// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'UserEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements UserEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password, String confirmPsw});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
    Object confirmPsw = freezed,
  }) {
    return _then(PasswordChanged(
      password: password == freezed ? _value.password : password as String,
      confirmPsw:
          confirmPsw == freezed ? _value.confirmPsw : confirmPsw as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({this.password, this.confirmPsw});

  @override
  final String password;
  @override
  final String confirmPsw;

  @override
  String toString() {
    return 'UserEvent.passwordChanged(password: $password, confirmPsw: $confirmPsw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPsw, confirmPsw) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPsw, confirmPsw)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPsw);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return passwordChanged(password, confirmPsw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password, confirmPsw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements UserEvent {
  const factory PasswordChanged({String password, String confirmPsw}) =
      _$PasswordChanged;

  String get password;
  String get confirmPsw;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String smsCode});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object smsCode = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      smsCode: smsCode == freezed ? _value.smsCode : smsCode as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged({this.phoneNumber, this.smsCode});

  @override
  final String phoneNumber;
  @override
  final String smsCode;

  @override
  String toString() {
    return 'UserEvent.phoneNumberChanged(phoneNumber: $phoneNumber, smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality().equals(other.smsCode, smsCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(smsCode);

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return phoneNumberChanged(phoneNumber, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber, smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements UserEvent {
  const factory PhoneNumberChanged({String phoneNumber, String smsCode}) =
      _$PhoneNumberChanged;

  String get phoneNumber;
  String get smsCode;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $CreateAccountButtonCopyWith<$Res> {
  factory $CreateAccountButtonCopyWith(
          CreateAccountButton value, $Res Function(CreateAccountButton) then) =
      _$CreateAccountButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateAccountButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $CreateAccountButtonCopyWith<$Res> {
  _$CreateAccountButtonCopyWithImpl(
      CreateAccountButton _value, $Res Function(CreateAccountButton) _then)
      : super(_value, (v) => _then(v as CreateAccountButton));

  @override
  CreateAccountButton get _value => super._value as CreateAccountButton;
}

/// @nodoc
class _$CreateAccountButton implements CreateAccountButton {
  const _$CreateAccountButton();

  @override
  String toString() {
    return 'UserEvent.createAccountButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateAccountButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return createAccountButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createAccountButton != null) {
      return createAccountButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return createAccountButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createAccountButton != null) {
      return createAccountButton(this);
    }
    return orElse();
  }
}

abstract class CreateAccountButton implements UserEvent {
  const factory CreateAccountButton() = _$CreateAccountButton;
}

/// @nodoc
abstract class $LoginWithEmailButtonCopyWith<$Res> {
  factory $LoginWithEmailButtonCopyWith(LoginWithEmailButton value,
          $Res Function(LoginWithEmailButton) then) =
      _$LoginWithEmailButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWithEmailButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $LoginWithEmailButtonCopyWith<$Res> {
  _$LoginWithEmailButtonCopyWithImpl(
      LoginWithEmailButton _value, $Res Function(LoginWithEmailButton) _then)
      : super(_value, (v) => _then(v as LoginWithEmailButton));

  @override
  LoginWithEmailButton get _value => super._value as LoginWithEmailButton;
}

/// @nodoc
class _$LoginWithEmailButton implements LoginWithEmailButton {
  const _$LoginWithEmailButton();

  @override
  String toString() {
    return 'UserEvent.loginWithEmailButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginWithEmailButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return loginWithEmailButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmailButton != null) {
      return loginWithEmailButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return loginWithEmailButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmailButton != null) {
      return loginWithEmailButton(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailButton implements UserEvent {
  const factory LoginWithEmailButton() = _$LoginWithEmailButton;
}

/// @nodoc
abstract class $LoginWithGoogleButtonCopyWith<$Res> {
  factory $LoginWithGoogleButtonCopyWith(LoginWithGoogleButton value,
          $Res Function(LoginWithGoogleButton) then) =
      _$LoginWithGoogleButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWithGoogleButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $LoginWithGoogleButtonCopyWith<$Res> {
  _$LoginWithGoogleButtonCopyWithImpl(
      LoginWithGoogleButton _value, $Res Function(LoginWithGoogleButton) _then)
      : super(_value, (v) => _then(v as LoginWithGoogleButton));

  @override
  LoginWithGoogleButton get _value => super._value as LoginWithGoogleButton;
}

/// @nodoc
class _$LoginWithGoogleButton implements LoginWithGoogleButton {
  const _$LoginWithGoogleButton();

  @override
  String toString() {
    return 'UserEvent.loginWithGoogleButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginWithGoogleButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return loginWithGoogleButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogleButton != null) {
      return loginWithGoogleButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return loginWithGoogleButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogleButton != null) {
      return loginWithGoogleButton(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogleButton implements UserEvent {
  const factory LoginWithGoogleButton() = _$LoginWithGoogleButton;
}

/// @nodoc
abstract class $LoginWithFacebookButtonCopyWith<$Res> {
  factory $LoginWithFacebookButtonCopyWith(LoginWithFacebookButton value,
          $Res Function(LoginWithFacebookButton) then) =
      _$LoginWithFacebookButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWithFacebookButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $LoginWithFacebookButtonCopyWith<$Res> {
  _$LoginWithFacebookButtonCopyWithImpl(LoginWithFacebookButton _value,
      $Res Function(LoginWithFacebookButton) _then)
      : super(_value, (v) => _then(v as LoginWithFacebookButton));

  @override
  LoginWithFacebookButton get _value => super._value as LoginWithFacebookButton;
}

/// @nodoc
class _$LoginWithFacebookButton implements LoginWithFacebookButton {
  const _$LoginWithFacebookButton();

  @override
  String toString() {
    return 'UserEvent.loginWithFacebookButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginWithFacebookButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return loginWithFacebookButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithFacebookButton != null) {
      return loginWithFacebookButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return loginWithFacebookButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithFacebookButton != null) {
      return loginWithFacebookButton(this);
    }
    return orElse();
  }
}

abstract class LoginWithFacebookButton implements UserEvent {
  const factory LoginWithFacebookButton() = _$LoginWithFacebookButton;
}

/// @nodoc
abstract class $ReauthenticateUserButtonCopyWith<$Res> {
  factory $ReauthenticateUserButtonCopyWith(ReauthenticateUserButton value,
          $Res Function(ReauthenticateUserButton) then) =
      _$ReauthenticateUserButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReauthenticateUserButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $ReauthenticateUserButtonCopyWith<$Res> {
  _$ReauthenticateUserButtonCopyWithImpl(ReauthenticateUserButton _value,
      $Res Function(ReauthenticateUserButton) _then)
      : super(_value, (v) => _then(v as ReauthenticateUserButton));

  @override
  ReauthenticateUserButton get _value =>
      super._value as ReauthenticateUserButton;
}

/// @nodoc
class _$ReauthenticateUserButton implements ReauthenticateUserButton {
  const _$ReauthenticateUserButton();

  @override
  String toString() {
    return 'UserEvent.reauthenticateUserButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReauthenticateUserButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return reauthenticateUserButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reauthenticateUserButton != null) {
      return reauthenticateUserButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return reauthenticateUserButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reauthenticateUserButton != null) {
      return reauthenticateUserButton(this);
    }
    return orElse();
  }
}

abstract class ReauthenticateUserButton implements UserEvent {
  const factory ReauthenticateUserButton() = _$ReauthenticateUserButton;
}

/// @nodoc
abstract class $SendLinkToEmailButtonCopyWith<$Res> {
  factory $SendLinkToEmailButtonCopyWith(SendLinkToEmailButton value,
          $Res Function(SendLinkToEmailButton) then) =
      _$SendLinkToEmailButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendLinkToEmailButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $SendLinkToEmailButtonCopyWith<$Res> {
  _$SendLinkToEmailButtonCopyWithImpl(
      SendLinkToEmailButton _value, $Res Function(SendLinkToEmailButton) _then)
      : super(_value, (v) => _then(v as SendLinkToEmailButton));

  @override
  SendLinkToEmailButton get _value => super._value as SendLinkToEmailButton;
}

/// @nodoc
class _$SendLinkToEmailButton implements SendLinkToEmailButton {
  const _$SendLinkToEmailButton();

  @override
  String toString() {
    return 'UserEvent.sendLinkToEmailButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendLinkToEmailButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return sendLinkToEmailButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendLinkToEmailButton != null) {
      return sendLinkToEmailButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return sendLinkToEmailButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendLinkToEmailButton != null) {
      return sendLinkToEmailButton(this);
    }
    return orElse();
  }
}

abstract class SendLinkToEmailButton implements UserEvent {
  const factory SendLinkToEmailButton() = _$SendLinkToEmailButton;
}

/// @nodoc
abstract class $UpdateEmailButtonCopyWith<$Res> {
  factory $UpdateEmailButtonCopyWith(
          UpdateEmailButton value, $Res Function(UpdateEmailButton) then) =
      _$UpdateEmailButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateEmailButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateEmailButtonCopyWith<$Res> {
  _$UpdateEmailButtonCopyWithImpl(
      UpdateEmailButton _value, $Res Function(UpdateEmailButton) _then)
      : super(_value, (v) => _then(v as UpdateEmailButton));

  @override
  UpdateEmailButton get _value => super._value as UpdateEmailButton;
}

/// @nodoc
class _$UpdateEmailButton implements UpdateEmailButton {
  const _$UpdateEmailButton();

  @override
  String toString() {
    return 'UserEvent.updateEmailButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateEmailButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return updateEmailButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateEmailButton != null) {
      return updateEmailButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return updateEmailButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateEmailButton != null) {
      return updateEmailButton(this);
    }
    return orElse();
  }
}

abstract class UpdateEmailButton implements UserEvent {
  const factory UpdateEmailButton() = _$UpdateEmailButton;
}

/// @nodoc
abstract class $UpdatePasswordButtonCopyWith<$Res> {
  factory $UpdatePasswordButtonCopyWith(UpdatePasswordButton value,
          $Res Function(UpdatePasswordButton) then) =
      _$UpdatePasswordButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdatePasswordButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $UpdatePasswordButtonCopyWith<$Res> {
  _$UpdatePasswordButtonCopyWithImpl(
      UpdatePasswordButton _value, $Res Function(UpdatePasswordButton) _then)
      : super(_value, (v) => _then(v as UpdatePasswordButton));

  @override
  UpdatePasswordButton get _value => super._value as UpdatePasswordButton;
}

/// @nodoc
class _$UpdatePasswordButton implements UpdatePasswordButton {
  const _$UpdatePasswordButton();

  @override
  String toString() {
    return 'UserEvent.updatePasswordButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdatePasswordButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return updatePasswordButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordButton != null) {
      return updatePasswordButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return updatePasswordButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordButton != null) {
      return updatePasswordButton(this);
    }
    return orElse();
  }
}

abstract class UpdatePasswordButton implements UserEvent {
  const factory UpdatePasswordButton() = _$UpdatePasswordButton;
}

/// @nodoc
abstract class $RegisterPhoneButtonCopyWith<$Res> {
  factory $RegisterPhoneButtonCopyWith(
          RegisterPhoneButton value, $Res Function(RegisterPhoneButton) then) =
      _$RegisterPhoneButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterPhoneButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $RegisterPhoneButtonCopyWith<$Res> {
  _$RegisterPhoneButtonCopyWithImpl(
      RegisterPhoneButton _value, $Res Function(RegisterPhoneButton) _then)
      : super(_value, (v) => _then(v as RegisterPhoneButton));

  @override
  RegisterPhoneButton get _value => super._value as RegisterPhoneButton;
}

/// @nodoc
class _$RegisterPhoneButton implements RegisterPhoneButton {
  const _$RegisterPhoneButton();

  @override
  String toString() {
    return 'UserEvent.registerPhoneButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterPhoneButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return registerPhoneButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerPhoneButton != null) {
      return registerPhoneButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return registerPhoneButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerPhoneButton != null) {
      return registerPhoneButton(this);
    }
    return orElse();
  }
}

abstract class RegisterPhoneButton implements UserEvent {
  const factory RegisterPhoneButton() = _$RegisterPhoneButton;
}

/// @nodoc
abstract class $VerifyPhoneButtonCopyWith<$Res> {
  factory $VerifyPhoneButtonCopyWith(
          VerifyPhoneButton value, $Res Function(VerifyPhoneButton) then) =
      _$VerifyPhoneButtonCopyWithImpl<$Res>;
  $Res call({String smsCode});
}

/// @nodoc
class _$VerifyPhoneButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $VerifyPhoneButtonCopyWith<$Res> {
  _$VerifyPhoneButtonCopyWithImpl(
      VerifyPhoneButton _value, $Res Function(VerifyPhoneButton) _then)
      : super(_value, (v) => _then(v as VerifyPhoneButton));

  @override
  VerifyPhoneButton get _value => super._value as VerifyPhoneButton;

  @override
  $Res call({
    Object smsCode = freezed,
  }) {
    return _then(VerifyPhoneButton(
      smsCode: smsCode == freezed ? _value.smsCode : smsCode as String,
    ));
  }
}

/// @nodoc
class _$VerifyPhoneButton implements VerifyPhoneButton {
  const _$VerifyPhoneButton({this.smsCode});

  @override
  final String smsCode;

  @override
  String toString() {
    return 'UserEvent.verifyPhoneButton(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerifyPhoneButton &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality().equals(other.smsCode, smsCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(smsCode);

  @JsonKey(ignore: true)
  @override
  $VerifyPhoneButtonCopyWith<VerifyPhoneButton> get copyWith =>
      _$VerifyPhoneButtonCopyWithImpl<VerifyPhoneButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return verifyPhoneButton(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyPhoneButton != null) {
      return verifyPhoneButton(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return verifyPhoneButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyPhoneButton != null) {
      return verifyPhoneButton(this);
    }
    return orElse();
  }
}

abstract class VerifyPhoneButton implements UserEvent {
  const factory VerifyPhoneButton({String smsCode}) = _$VerifyPhoneButton;

  String get smsCode;
  @JsonKey(ignore: true)
  $VerifyPhoneButtonCopyWith<VerifyPhoneButton> get copyWith;
}

/// @nodoc
abstract class $CreateCreditCardButtonCopyWith<$Res> {
  factory $CreateCreditCardButtonCopyWith(CreateCreditCardButton value,
          $Res Function(CreateCreditCardButton) then) =
      _$CreateCreditCardButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCreditCardButtonCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $CreateCreditCardButtonCopyWith<$Res> {
  _$CreateCreditCardButtonCopyWithImpl(CreateCreditCardButton _value,
      $Res Function(CreateCreditCardButton) _then)
      : super(_value, (v) => _then(v as CreateCreditCardButton));

  @override
  CreateCreditCardButton get _value => super._value as CreateCreditCardButton;
}

/// @nodoc
class _$CreateCreditCardButton implements CreateCreditCardButton {
  const _$CreateCreditCardButton();

  @override
  String toString() {
    return 'UserEvent.createCreditCardButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateCreditCardButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return createCreditCardButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createCreditCardButton != null) {
      return createCreditCardButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return createCreditCardButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createCreditCardButton != null) {
      return createCreditCardButton(this);
    }
    return orElse();
  }
}

abstract class CreateCreditCardButton implements UserEvent {
  const factory CreateCreditCardButton() = _$CreateCreditCardButton;
}

/// @nodoc
abstract class $DeleteAccountCopyWith<$Res> {
  factory $DeleteAccountCopyWith(
          DeleteAccount value, $Res Function(DeleteAccount) then) =
      _$DeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteAccountCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $DeleteAccountCopyWith<$Res> {
  _$DeleteAccountCopyWithImpl(
      DeleteAccount _value, $Res Function(DeleteAccount) _then)
      : super(_value, (v) => _then(v as DeleteAccount));

  @override
  DeleteAccount get _value => super._value as DeleteAccount;
}

/// @nodoc
class _$DeleteAccount implements DeleteAccount {
  const _$DeleteAccount();

  @override
  String toString() {
    return 'UserEvent.deleteAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password, String confirmPsw),
    @required TResult phoneNumberChanged(String phoneNumber, String smsCode),
    @required TResult createAccountButton(),
    @required TResult loginWithEmailButton(),
    @required TResult loginWithGoogleButton(),
    @required TResult loginWithFacebookButton(),
    @required TResult reauthenticateUserButton(),
    @required TResult sendLinkToEmailButton(),
    @required TResult updateEmailButton(),
    @required TResult updatePasswordButton(),
    @required TResult registerPhoneButton(),
    @required TResult verifyPhoneButton(String smsCode),
    @required TResult createCreditCardButton(),
    @required TResult deleteAccount(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password, String confirmPsw),
    TResult phoneNumberChanged(String phoneNumber, String smsCode),
    TResult createAccountButton(),
    TResult loginWithEmailButton(),
    TResult loginWithGoogleButton(),
    TResult loginWithFacebookButton(),
    TResult reauthenticateUserButton(),
    TResult sendLinkToEmailButton(),
    TResult updateEmailButton(),
    TResult updatePasswordButton(),
    TResult registerPhoneButton(),
    TResult verifyPhoneButton(String smsCode),
    TResult createCreditCardButton(),
    TResult deleteAccount(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult createAccountButton(CreateAccountButton value),
    @required TResult loginWithEmailButton(LoginWithEmailButton value),
    @required TResult loginWithGoogleButton(LoginWithGoogleButton value),
    @required TResult loginWithFacebookButton(LoginWithFacebookButton value),
    @required TResult reauthenticateUserButton(ReauthenticateUserButton value),
    @required TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    @required TResult updateEmailButton(UpdateEmailButton value),
    @required TResult updatePasswordButton(UpdatePasswordButton value),
    @required TResult registerPhoneButton(RegisterPhoneButton value),
    @required TResult verifyPhoneButton(VerifyPhoneButton value),
    @required TResult createCreditCardButton(CreateCreditCardButton value),
    @required TResult deleteAccount(DeleteAccount value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(createAccountButton != null);
    assert(loginWithEmailButton != null);
    assert(loginWithGoogleButton != null);
    assert(loginWithFacebookButton != null);
    assert(reauthenticateUserButton != null);
    assert(sendLinkToEmailButton != null);
    assert(updateEmailButton != null);
    assert(updatePasswordButton != null);
    assert(registerPhoneButton != null);
    assert(verifyPhoneButton != null);
    assert(createCreditCardButton != null);
    assert(deleteAccount != null);
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult createAccountButton(CreateAccountButton value),
    TResult loginWithEmailButton(LoginWithEmailButton value),
    TResult loginWithGoogleButton(LoginWithGoogleButton value),
    TResult loginWithFacebookButton(LoginWithFacebookButton value),
    TResult reauthenticateUserButton(ReauthenticateUserButton value),
    TResult sendLinkToEmailButton(SendLinkToEmailButton value),
    TResult updateEmailButton(UpdateEmailButton value),
    TResult updatePasswordButton(UpdatePasswordButton value),
    TResult registerPhoneButton(RegisterPhoneButton value),
    TResult verifyPhoneButton(VerifyPhoneButton value),
    TResult createCreditCardButton(CreateCreditCardButton value),
    TResult deleteAccount(DeleteAccount value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DeleteAccount implements UserEvent {
  const factory DeleteAccount() = _$DeleteAccount;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _UserState call(
      {@required EmailAddress email,
      @required Password password,
      @required PhoneNumber phoneNumber,
      @required bool isSubmitting,
      @required Option<Either<String, Unit>> failureOrSuccessOption}) {
    return _UserState(
      email: email,
      password: password,
      phoneNumber: phoneNumber,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  EmailAddress get email;
  Password get password;
  PhoneNumber get phoneNumber;
  bool get isSubmitting;
  Option<Either<String, Unit>> get failureOrSuccessOption;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      PhoneNumber phoneNumber,
      bool isSubmitting,
      Option<Either<String, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<String, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      PhoneNumber phoneNumber,
      bool isSubmitting,
      Option<Either<String, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_UserState(
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<String, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UserState extends _UserState {
  const _$_UserState(
      {@required this.email,
      @required this.password,
      @required this.phoneNumber,
      @required this.isSubmitting,
      @required this.failureOrSuccessOption})
      : assert(email != null),
        assert(password != null),
        assert(phoneNumber != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null),
        super._();

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final PhoneNumber phoneNumber;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<String, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'UserState(email: $email, password: $password, phoneNumber: $phoneNumber, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState extends UserState {
  const _UserState._() : super._();
  const factory _UserState(
          {@required EmailAddress email,
          @required Password password,
          @required PhoneNumber phoneNumber,
          @required bool isSubmitting,
          @required Option<Either<String, Unit>> failureOrSuccessOption}) =
      _$_UserState;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  PhoneNumber get phoneNumber;
  @override
  bool get isSubmitting;
  @override
  Option<Either<String, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith;
}
