part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(Customer dataUser) =
      Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
  const factory AuthenticationState.uninitialized() = Uninitialized;
}
