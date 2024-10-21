import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rapl_club/features/auth/data/repository/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(const InitialState()) {
    on<SendSmsEvent>((event, emit) async {
      emit(const LoadingState());
      final success = await authRepository.sendSms(event.phone);
      if (success) {
        emit(const SmsSentState());
      } else {
        emit(const ErrorState('Failed to send SMS'));
      }
    });

    on<VerifySmsEvent>((event, emit) async {
      emit(const LoadingState());
      try {
        final response = await authRepository.verifySms(event.phone, event.code);
        emit(SmsVerifiedState(response));
      } catch (e) {
        emit(ErrorState('Verification failed'));
      }
    });
  }
}
