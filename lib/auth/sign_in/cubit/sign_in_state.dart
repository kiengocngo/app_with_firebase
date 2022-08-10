import 'package:equatable/equatable.dart';

enum AuthStatus { initial, loading, success, failure }

class SignInState extends Equatable {
  final AuthStatus status;
  final String error;
  const SignInState({required this.status, required this.error});

  SignInState copyWith({
    final AuthStatus? status,
    final String? error,
  }) {
    return SignInState(
        status: status ?? this.status, error: error ?? this.error);
  }

  @override
  List<Object> get props => [status, error];
}
