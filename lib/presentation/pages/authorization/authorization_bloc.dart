import 'package:bloc/bloc.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(AuthorizationState.UNKNOWN);

  @override
  Stream<AuthorizationState> mapEventToState(AuthorizationEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}

/// Event being processed by [CounterBloc].
abstract class AuthorizationEvent {}

class SignInEvent extends AuthorizationEvent {
  String username;
  String password;

  SignInEvent({this.username, this.password});
}

enum AuthorizationState { UNKNOWN, LOADING, SUCCESS, ERROR }
