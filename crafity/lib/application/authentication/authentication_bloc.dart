import 'package:bloc/bloc.dart';
import 'package:crafity/domain/user/customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:crafity/infrastructure/user/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;

  AuthenticationBloc(UserRepository userRepository)
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(AuthenticationState.uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        yield* _mapAppStartedtoState();
      },
      signOut: (e) async* {
        await _userRepository.signOut();
        yield AuthenticationState.unauthenticated();
      },
    );
  }

  Stream<AuthenticationState> _mapAppStartedtoState() async* {
    await Future.delayed(Duration(seconds: 6));
    try {
      final userExist = await _userRepository.getSignInUser();
      yield userExist.fold(() => AuthenticationState.unauthenticated(),
          (user) => AuthenticationState.authenticated(user));
    } catch (e) {
      yield AuthenticationState.uninitialized();
    }
  }
}
